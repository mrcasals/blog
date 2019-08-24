---
title: El petit príncep
permalink: /petit-princep/
layout: single
toc: true
toc_label: Idiomes
---
Fa anys que vaig començar la meva col·lecció d'edicions d'El petit príncep en diferents idiomes i sistemes d'escriptura. Aquí hi ha una llista dels que tinc actualment.

La distinció entre llengües i idiomes diferents acostuma a ser delicada. He optat per mantenir entrades diferents per cada parla, ja sigui idioma o dialecte.

<h2 id="dades-generals">Dades generals</h2>
{% assign languages_count = site.petit_princep_languages | size %}
{% assign books_count = site.petit_princep_books | size %}

<dl>
  <dt>Total de llibres</dt>
  <dd>{{ books_count }}</dd>
  <dt>Total de parles o idiomes</dt>
  <dd>{{ languages_count }}</dd>
</dl>

{% for language in site.petit_princep_languages %}
{% assign books_count = site.petit_princep_books | where: 'language', language.title | size %}
{% assign books = site.petit_princep_books | where: 'language', language.title %}

<h2 id="{{ language.title | downcase | url_encode }}">
  {{ language.title }}
</h2>

Número de llibres: {{ books_count }}

<ul>
  {% for book in books %}
  <li>
    <a href="{{ book.url }}">{{ book.title }}</a>
    {%if book.note_on_title %} {{book.note_on_title }}{% endif %}
  </li>
  {% endfor %}
</ul>

{% endfor %}
