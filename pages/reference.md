---
title: Reference
permalink: /reference/
---

<div class="home">
  <h1 class="page-heading">Reference</h1>
    {% assign categories = '' %}
    {% for ref in site.reference %}
      {% if categories != ref.categories %}
        {% if categories != '' %}
          </ul>
        {% endif %}
        {% assign categories = ref.categories %}

        <h2>{{ categories }}</h2>
        <ul class="post-list">

      {% endif %}

      <li>
        <h3>
          <a class="post-link" href="{{ ref.url | prepend: site.baseurl }}">{{ ref.title }}</a>
        </h3>
      </li>
    {% endfor %}
    {% if categories != '' %}
      </ul>
    {% endif %}
  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>
</div>