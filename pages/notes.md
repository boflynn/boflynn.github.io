---
permalink: /notes/
---

<div class="home">
  <h1 class="page-heading">Notes</h1>
    {% assign categories = '' %}
    {% for note in site.notes %}
      {% if categories != note.categories %}
        {% if categories != '' %}
          </ul>
        {% endif %}
        {% assign categories = note.categories %}

        <h2>{{ categories }}</h2>
        <ul class="post-list">

      {% endif %}

      <li>
        <h3>
          <a class="post-link" href="{{ note.url | prepend: site.baseurl }}">{{ note.title }}</a>
        </h3>
      </li>
    {% endfor %}
    {% if categories != '' %}
      </ul>
    {% endif %}
  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>
</div>
