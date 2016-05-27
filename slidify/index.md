---
title       : Coursera Slidify Project
subtitle    : 
author      : Dipan Man Shrestha
job         : Civil Engineer
framework   : revealjs        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : default      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Disease Prediction Using R

1. How I have created dataset ?
2. Cleaning and Rensing dataset ?
3. Data Mining
4. ML Models
5. Results

--- .class #id

## Dataset

  The data set was manually created.
  Intervied 50 different people.
  
  ```r
    head(d1)
  ```
  
  ```
  ##                                     symptoms  disease
  ## 1 YELLOW DISCOLORATION OF WHITE PART OF EYES JAUNDICE
  ## 2 YELLOW DISCOLORATION OF WHITE PART OF SKIN JAUNDICE
  ## 3                               FEELING WEAK JAUNDICE
  ## 4                                  LOW FEVER JAUNDICE
  ## 5                            YELLOW PIGMENTS JAUNDICE
  ## 6                            YELLOWISH COLOR JAUNDICE
  ```

--- .class #id

## Data Cleaning
  
  Empty values were removed.
  
  Disease columns was casted as factor.

```r
    colnames(d1)
```

```
## [1] "symptoms" "disease"
```

--- .class #id

## Ml Algorithms

  Using tm library stop word was removed.
  
  Frequency table was built based on the occurance of words.
  
  Also TF-ITF was calculated.


```r
    library(tm)
```

```
## Loading required package: NLP
```

```
## 
## Attaching package: 'NLP'
```

```
## The following object is masked from 'package:ggplot2':
## 
##     annotate
```

--- .class #id

## Visualization
Using diamonds dataset for visualization 

as my data points are not good.
![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4-1.png)
