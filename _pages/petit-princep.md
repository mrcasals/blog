---
title: El petit príncep
permalink: /petit-princep/
layout: single
toc: true
toc_label: Idiomes
---
Fa anys que vaig començar la meva col·lecció d'edicions d'El petit príncep en diferents idiomes i sistemes d'escriptura. Aquí hi ha una llista dels que tinc actualment.

La distinció entre llengües i idiomes diferents acostuma a ser delicada. Per exemple, tots els parlars de la Xina se solen considerar com al mateix idioma, tot i que en realitat són mútuament inintel·ligibles. Per altra banda, parlants d'idiomes considerats diferents com ara el castellà i el portuguès es poden entendre perfectament.

Vista aquesta realitat, intento mantenir entrades diferents per cada parla. Cal dir també que no totes les parles representades en aquesta col·lecció són idiomes naturals: n'hi ha que ja no tenen parlants natius ([llatí](#llatí)), hi ha parles creades per a treballs de ficció ([aurebesh](#aurebesh))...

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
  <li>{{ book.title }} - ISBN: {{book.isbn}}</li>
  {% endfor %}
</ul>

{% endfor %}
