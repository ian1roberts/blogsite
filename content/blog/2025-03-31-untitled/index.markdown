---
title: Python code block test
author: Ian Roberts
date: '2025-03-31'
slug: python-code-block-test
summary: A test of a Python code block in an R Markdown document.
categories:
  - Programming
tags:
  - Python
  - Plotting
---

Hello world!


``` python
import matplotlib.pyplot as plt
import numpy as np

# Generate some data
x = np.linspace(0, 10, 100)
y = np.sin(x)

# Create the plot
plt.figure(figsize=(6, 4))
plt.plot(x, y, label="Sine Wave")
plt.title("Test Plot")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.legend()
plt.grid(True)

# Save the plot to display it in the blog post
plt.savefig("test_plot.png")
plt.show()
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="576" />
