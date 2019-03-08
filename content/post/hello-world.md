---
title: "Hello World"
date: 2019-03-04T16:21:45+01:00
series: "Learning how to Hugo"
tags: ["markdown"]
toc: true
---

Y'all. This is my first post.

{{< toc >}}

# Section
My subsection is nice and it has notes [^1]. See how they work[^work]!

[^1]: This is the first footnote.

[^work]: They do work, indeed.

## Subsection
Here it is.

# Code blocks

Here's one, using Prism:

``` html
<ul>
  <li
    v-for="todo in todos"
    :key="todo.id"
  >
    {{ todo.text }}
  </li>
</ul>
```