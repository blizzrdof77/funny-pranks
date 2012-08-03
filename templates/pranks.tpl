{% extends "base.tpl" %}


{% block funny_pranks_body %}

  <table class="pranks" summary="A list of pranks for this page">

    {% for current_prank in the_pranks %}

      <tr class="{{ current_prank.odd_or_even }}">
        <td class="icon">
          <a href="/static/pranks/mp3/{{current_prank.file_name}}.mp3"
            ><img
             src="/static/images/prank-icons/{{ current_prank.file_name }}.png"
             alt="{{ current_prank.name }}" /></a>
        </td>

        <td class="name">
          <a href="/static/pranks/mp3/{{current_prank.file_name}}.mp3"
           >{{ current_prank.real_name }}</a>
        </td>

        <td class="links">
          <a href="/static/pranks/mp3/{{current_prank.file_name}}.mp3">mp3</a> |
          <a href="/static/pranks/ogg/{{current_prank.file_name}}.ogg">ogg</a>
        </td>
      </tr>

    {% endfor %}

  </table>

{% endblock %}


{% block funny_pranks_page_links %}

  {% if not first_page %}
    <a href="/pages/{{ previous_page }}">&lt; previous</a>
  {% endif %}
  
  {% if last_page %}
    <a href="/others/">next &gt;</a>
  {% else %}
    <a href="/pages/{{ next_page }}">next &gt;</a>
  {% endif %}

{% endblock %}
