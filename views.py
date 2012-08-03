from django.http import HttpResponse
from django.shortcuts import render_to_response
import math

from os import listdir
import os.path as path
import funnypranks.settings as settings


def show_pranks(request, page_as_string=1):

    f = open(path.join(settings.APP_DIR, "pranks/prank-list.txt"), 'r')
    line = f.readline()

    # read in all lines from our prank list...
    all_pranks = []
    while line != "":
        file_name, real_name = split_prank_line(line)
        all_pranks.append( {'real_name': real_name, 'file_name': file_name} )
        line = f.readline()
    number_of_pranks = len(all_pranks)
    number_of_pages = int( math.ceil(float(number_of_pranks) / 5.0) )

    page = int(page_as_string)
    if page > number_of_pages: page = number_of_pages
    elif page < 1: page = 1

    first_page, last_page = False, False
    if page == 1: first_page = True
    elif page == number_of_pages: last_page = True

    first = (page - 1) * 5
    last = first + 5
    pranks_to_show = all_pranks[first:last]
    number_of_pranks_in_pranks_to_show = len(pranks_to_show)

    for prank_num in range(number_of_pranks_in_pranks_to_show):
        # this logic may seem backwards if you think about it, since, for
        # instance, "3 % 2" would give you 1, but 3 is not even.  the reason
        # for this is because we *start counting from zero*.
        pranks_to_show[prank_num]["odd_or_even"] = get_odd_or_even(prank_num)

    template_vars = {
      'page': page,
      'first_page': first_page,
      'last_page': last_page,
      'next_page': page + 1,
      'previous_page': page - 1,
      'the_pranks': pranks_to_show}

    return render_to_response('pranks.tpl', template_vars)


def show_other_pranks(request):
    files = listdir(path.join(settings.APP_DIR, "pranks/static/pranks/other"))
    pranks = [0] * len(files)
    for prank_num in range(len(files)):
        pranks[prank_num] = \
          {'file': files[prank_num], 'odd_or_even': get_odd_or_even(prank_num)}
    return render_to_response('other-pranks.tpl', {'the_pranks': pranks})


def split_prank_line(line):
    file_name = ''
    real_name = ''

    c = 0
    while line[c] != ' ':
        file_name = file_name + line[c]
        c = c + 1

    while line[c] == ' ':
        c = c + 1

    if line[c] == '"':
        c = c + 1

    while line[c] != '"':
        real_name = real_name + line[c]
        c = c + 1

    return file_name, real_name


def get_odd_or_even(integer_value):
    # this logic may seem backwards if you think about it, since, for
    # instance, "3 % 2" would give you 1, but 3 is not even.  the reason
    # for this is because we *start counting from zero*.
    if integer_value % 2 == 1: return 'even'
    else: return 'odd'
