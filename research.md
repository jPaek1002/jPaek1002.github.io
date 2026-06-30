---
layout: page
title: Research Blog
permalink: /research/
---

Notes, ideas, and write-ups from my research.

<ul class="post-list">
{% assign research_posts = site.research | sort: "date" | reverse %}
{% for post in research_posts %}
  <li>
    <span class="post-date">{{ post.date | date: "%B %-d, %Y" }}</span>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
  </li>
{% endfor %}
</ul>
