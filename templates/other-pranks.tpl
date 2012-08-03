{% extends "base.tpl" %}


{% block funny_pranks_body %}
  
  <table class="pranks" summary="A list of pranks for this page">

    {% for current_prank in the_pranks %}

      <tr class="{{ current_prank.odd_or_even }}">
        <td>
          <a href="/static/pranks/other/{{current_prank.file}}"
            >{{current_prank.file}}</a>
        </td>
      </tr>

    {% endfor %}

  </table>

{% endblock %}


{% block funny_pranks_page_links %}

  {# XXX: quick hack -- we shouldn't hard-code this page number (3)... #}
  <a href="/pages/3">&lt; previous</a>

{% endblock %}
