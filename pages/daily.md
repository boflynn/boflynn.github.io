---
title: Daily Things
permalink: /daily/
---

<div class="home">
  <h1 class="page-heading">Daily Thing</h1>

  <p>These are my daily things. Mostly for my kids, but some might be for me.</p>

  <ul class="daily-list">
    {% for daily_thing in site.daily %}
    <li>
        <a class="daily-link" href="{{ daily_thing.link }}">{{ daily_thing.name }}</a> - {{ daily_thing.description }}
    </li>
    {% endfor %}
  </ul>
</div>