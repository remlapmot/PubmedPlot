# MR publications over time

``` r

library(PubmedPlot)
library(ggplot2)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
library(lubridate)
#> 
#> Attaching package: 'lubridate'
#> The following objects are masked from 'package:base':
#> 
#>     date, intersect, setdiff, union
```

``` r

data(mr_pubmed, package = "PubmedPlot")
b <- group_by_time_interval(mr_pubmed)
p <- plot_time_interval(b)
```

``` r

p
```

![Joined scatter plot of the number of new PubMed entries per week
containing Mendelian randomis/zation in the
title.](mr_files/figure-html/mr_fig-1.svg)
