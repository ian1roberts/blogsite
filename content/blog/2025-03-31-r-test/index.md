---
title: "R Test"
summary: "A test of R Markdown"
date: "2025-04-06"
slug: "r-statistics-intro"
categories:
  - R
  - Statistics
tags:
  - R
  - blogdown
  - analysis
draft: false
---

{{< toc >}}


## A test of R Markdown

Just a test of R Markdown, create some plots


## Something to see?

A simple plot test renders in preview, but shortcodes do not render in preview.


``` r
par(mfrow = c(2, 2))
plot(1:10, main = "Sample plot1")
a <- sample(1:10, 10)
b <- sample(1:10, 10)
plot(a, b, main = "Sample plot2")
plot(a, b, main = "Sample plot3")
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="672" />

### Markmap

This shows how R code and shortcode can be used to create a Markmap diagram.

```markmap {height="200px"}
- Hugo Modules
  - blox-tailwind
  - blox-plugins-netlify
  - blox-plugins-netlify-cms
  - blox-plugins-reveal
```

### Flowchart

This shows how R code and shortcode can be used to create a Flowchart diagram.

```mermaid
graph TD;
  A-->B;
  A-->C;
  B-->D;
  C-->D;
```
