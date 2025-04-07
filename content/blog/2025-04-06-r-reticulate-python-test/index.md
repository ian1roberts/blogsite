---
title: R reticulate python test
author: Ian Roberts
date: '2025-04-06'
slug: r-reticulate-python-test
summary: |
  This is a test of the reticulate package to run Python code in R Markdown.
  It includes a simple example of creating a grid of plots using matplotlib.
  The example demonstrates how to create an XY scatter plot, bar chart, pie chart, and horizontal bar plot.
  The data used is a sample DataFrame created with pandas.
categories:
  - Programming
  - Python
tags:
  - Python
  - Reticulate
draft: false
---

{{< toc >}}
## Hello World in Python 

Simple python code renders in preview, but python that generates complex 
plots does not render in preview.

This seems to be related to reticulate not being able to find the correct python environment.

Here we test the use of reticulate to run Python code in R Markdown.

``` python
import pandas as pd
import matplotlib.pyplot as plt

# Create sample data
data = pd.DataFrame({
    'x': [1, 2, 3, 4, 5],
    'y': [10, 20, 25, 30, 35],
    'category': ['A', 'B', 'C', 'D', 'E'],
    'values': [15, 30, 45, 10, 20]
})

# Create a 2x2 grid of plots
fig, axes = plt.subplots(2, 2, figsize=(10, 8))

# 1. XY Scatter Plot
axes[0, 0].scatter(data['x'], data['y'], color='blue', label='Scatter')
axes[0, 0].set_title('XY Scatter Plot')
axes[0, 0].set_xlabel('X-axis')
axes[0, 0].set_ylabel('Y-axis')
axes[0, 0].legend()

# 2. Bar Chart
axes[0, 1].bar(data['category'], data['values'], color='green')
axes[0, 1].set_title('Bar Chart')
axes[0, 1].set_xlabel('Category')
axes[0, 1].set_ylabel('Values')

# 3. Pie Chart
axes[1, 0].pie(data['values'], labels=data['category'], autopct='%1.1f%%', startangle=90)
```

```
## ([<matplotlib.patches.Wedge object at 0x7826854f4d90>, <matplotlib.patches.Wedge object at 0x782684ffab10>, <matplotlib.patches.Wedge object at 0x782685000210>, <matplotlib.patches.Wedge object at 0x782684ffb810>, <matplotlib.patches.Wedge object at 0x782685003f90>], [Text(-0.42095186141680907, 1.0162674502165874, 'A'), Text(-1.0999999999999959, -9.616505800409723e-08, 'B'), Text(0.42095195026173315, -1.0162674134158014, 'C'), Text(1.0625182382784821, 0.284701586447267, 'D'), Text(0.5499991243039376, 0.9526284497457033, 'E')], [Text(-0.22961010622735037, 0.5543277001181385, '12.5%'), Text(-0.5999999999999978, -5.2453668002234845e-08, '25.0%'), Text(0.22961015468821805, -0.5543276800449826, '37.5%'), Text(0.5795554026973538, 0.155291774425782, '8.3%'), Text(0.2999995223476023, 0.5196155180431108, '16.7%')])
```

``` python
axes[1, 0].set_title('Pie Chart')

# 4. Horizontal Bar Plot
axes[1, 1].barh(data['category'], data['values'], color='orange')
axes[1, 1].set_title('Horizontal Bar Plot')
axes[1, 1].set_xlabel('Values')
axes[1, 1].set_ylabel('Category')

# Adjust layout and show the plot
plt.tight_layout()
plt.show()
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="960" />
