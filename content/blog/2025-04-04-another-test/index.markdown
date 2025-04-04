---
title: Another test
author: Ian Roberts
date: '2025-04-04'
slug: another-test
summary: A test post
categories:
  - Programming
  - R
tags:
  - R
  - blogdown
---

{{< toc >}}

## Custom shortcode
This is a Hugo shortcode:

{{< badge icon="🚀" text="Explorer of the unknown" aria="Explorer Badge" >}}

## Built-in shortcode

{{< callout "note" >}}
Get help here
{{< /callout >}}

Built in emoji :smile:

## Mindmaps 

```markmap {height="200px"}
- Hugo Modules
  - blox-tailwind
  - blox-plugins-netlify
  - blox-plugins-netlify-cms
  - blox-plugins-reveal
```

## Flowchart

```mermaid
graph TD;
  A-->B;
  A-->C;
  B-->D;
  C-->D;
```

### Embed R


``` r
a <- 1:10
b <- 3:12
print(a + b)
```

```
##  [1]  4  6  8 10 12 14 16 18 20 22
```

### Embed Python


``` python
import pandas as pd

x = pd.DataFrame({"a": range(3), "b": range(3)})
print(x)
```

```
##    a  b
## 0  0  0
## 1  1  1
## 2  2  2
```
