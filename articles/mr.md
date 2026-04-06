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
# a <- PubmedPlot::search_term_by_year('"Mendelian randomisation" [Title] OR "Mendelian randomization" [Title]', 2003:2005)
a <- PubmedPlot::search_term_by_year('"Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab]', 2003:lubridate::year(Sys.Date()))
#> Searching for year: 2003 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2003/01/01"[dp] : "2003/12/31"[dp]) 
#> Found 3 articles matching the search term.
#> Fetching records 1 to 3 
#> Searching for year: 2004 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2004/01/01"[dp] : "2004/12/31"[dp]) 
#> Found 9 articles matching the search term.
#> Fetching records 1 to 9 
#> Searching for year: 2005 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2005/01/01"[dp] : "2005/12/31"[dp]) 
#> Found 13 articles matching the search term.
#> Fetching records 1 to 13 
#> Searching for year: 2006 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2006/01/01"[dp] : "2006/12/31"[dp]) 
#> Found 9 articles matching the search term.
#> Fetching records 1 to 9 
#> Searching for year: 2007 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2007/01/01"[dp] : "2007/12/31"[dp]) 
#> Found 15 articles matching the search term.
#> Fetching records 1 to 15 
#> Searching for year: 2008 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2008/01/01"[dp] : "2008/12/31"[dp]) 
#> Found 27 articles matching the search term.
#> Fetching records 1 to 27 
#> Searching for year: 2009 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2009/01/01"[dp] : "2009/12/31"[dp]) 
#> Found 36 articles matching the search term.
#> Fetching records 1 to 36 
#> Searching for year: 2010 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2010/01/01"[dp] : "2010/12/31"[dp]) 
#> Found 43 articles matching the search term.
#> Fetching records 1 to 43 
#> Searching for year: 2011 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2011/01/01"[dp] : "2011/12/31"[dp]) 
#> Found 49 articles matching the search term.
#> Fetching records 1 to 49 
#> Searching for year: 2012 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2012/01/01"[dp] : "2012/12/31"[dp]) 
#> Found 77 articles matching the search term.
#> Fetching records 1 to 77 
#> Searching for year: 2013 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2013/01/01"[dp] : "2013/12/31"[dp]) 
#> Found 111 articles matching the search term.
#> Fetching records 1 to 111 
#> Searching for year: 2014 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2014/01/01"[dp] : "2014/12/31"[dp]) 
#> Found 139 articles matching the search term.
#> Fetching records 1 to 139 
#> Searching for year: 2015 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2015/01/01"[dp] : "2015/12/31"[dp]) 
#> Found 182 articles matching the search term.
#> Fetching records 1 to 182 
#> Searching for year: 2016 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2016/01/01"[dp] : "2016/12/31"[dp]) 
#> Found 236 articles matching the search term.
#> Fetching records 1 to 236 
#> Searching for year: 2017 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2017/01/01"[dp] : "2017/12/31"[dp]) 
#> Found 296 articles matching the search term.
#> Fetching records 1 to 296 
#> Searching for year: 2018 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2018/01/01"[dp] : "2018/12/31"[dp]) 
#> Found 383 articles matching the search term.
#> Fetching records 1 to 383 
#> Searching for year: 2019 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2019/01/01"[dp] : "2019/12/31"[dp]) 
#> Found 547 articles matching the search term.
#> Fetching records 1 to 500 
#> Fetching records 501 to 547 
#> Searching for year: 2020 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2020/01/01"[dp] : "2020/12/31"[dp]) 
#> Found 840 articles matching the search term.
#> Fetching records 1 to 500 
#> Fetching records 501 to 840 
#> Searching for year: 2021 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2021/01/01"[dp] : "2021/12/31"[dp]) 
#> Found 1228 articles matching the search term.
#> Fetching records 1 to 500 
#> Fetching records 501 to 1000 
#> Fetching records 1001 to 1228 
#> Searching for year: 2022 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2022/01/01"[dp] : "2022/12/31"[dp]) 
#> Found 1654 articles matching the search term.
#> Fetching records 1 to 500 
#> Fetching records 501 to 1000 
#> Fetching records 1001 to 1500 
#> Fetching records 1501 to 1654 
#> Searching for year: 2023 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2023/01/01"[dp] : "2023/12/31"[dp]) 
#> Found 2980 articles matching the search term.
#> Fetching records 1 to 500 
#> Fetching records 501 to 1000 
#> Fetching records 1001 to 1500 
#> Fetching records 1501 to 2000 
#> Fetching records 2001 to 2500 
#> Fetching records 2501 to 2980 
#> Searching for year: 2024 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2024/01/01"[dp] : "2024/12/31"[dp]) 
#> Found 6436 articles matching the search term.
#> Fetching records 1 to 500 
#> Fetching records 501 to 1000 
#> Fetching records 1001 to 1500 
#> Fetching records 1501 to 2000 
#> Fetching records 2001 to 2500 
#> Fetching records 2501 to 3000 
#> Fetching records 3001 to 3500 
#> Fetching records 3501 to 4000 
#> Fetching records 4001 to 4500 
#> Fetching records 4501 to 5000 
#> Fetching records 5001 to 5500 
#> Fetching records 5501 to 6000 
#> Fetching records 6001 to 6436 
#> Searching for year: 2025 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2025/01/01"[dp] : "2025/12/31"[dp]) 
#> Found 7131 articles matching the search term.
#> Fetching records 1 to 500 
#> Fetching records 501 to 1000 
#> Error fetching records: 500 
#> Response content: <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"> 
#> <html>
#> <head>
#> <title>NCBI/eutils101 - WWW Error 500 Diagnostic</title>
#> <style type="text/css"> 
#> h1.error {color: red; font-size: 40pt}
#> div.diags {text-indent: 0.5in }
#> </style> 
#> </head>
#> <body>
#> <h1>Server Error</h1>
#> 
#> 
#> <p>Your request could not be processed due to a problem on
#> our Web server.  This could be a transient problem, please
#> try the query again.  If it doesn't clear up within a
#> reasonable period of time, e-mail a short description of your
#> query and the diagnostic information shown below to:</p>
#> 
#> <p>
#> pubmed@nlm.nih.gov - for problems with PubMed<br/>
#> webadmin@ncbi.nlm.nih.gov - for problems with other services<br/>
#> </p>
#> 
#> <p>Thank you for your assistance.  We will try to fix the
#> problem as soon as possible.
#> </p>
#> <hr/>
#> <p>
#> Diagnostic Information:</p>
#> 
#> <div class="diags">Error: 500</div>
#> 
#> <div class="diags">URL:  h t t p : / / e x t - h t t p - e u t i l s . l i n k e r d . n c b i . n l m . n i h . g o v / e n t r e z / e u t i l s / e f e t c h . f c g i ? d b = p u b m e d & a m p ; q u e r y _ k e y = 1 & a m p ; W e b E n v = M C I D _ 6 9 d 3 2 f 7 f f a d f d b 5 4 6 6 0 6 b c 4 b & a m p ; r e t s t a r t = 5 0 0 & a m p ; r e t m a x = 5 0 0 & a m p ; r e t m o d e = x m l & a m p ; r e t t y p e = a b s t r a c t </div>
#> 
#> <div class="diags">Client: 130.14.19.251</div>
#> 
#> <div class="diags">Server: eutils101</div>
#> 
#> <div class="diags">Time: Sun Apr  5 23:59:01 EDT 2026</div>
#> 
#>  
#> <p>
#> NOTE: The above is an internal URL which may differ from the one you used to address the page.</p>
#> <hr/>
#> <p>Rev. 01/04/08</p>
#> 
#> </body>
#> </html>
#>  
#> Fetching records 1001 to 1500 
#> Fetching records 1501 to 2000 
#> Fetching records 2001 to 2500 
#> Fetching records 2501 to 3000 
#> Fetching records 3001 to 3500 
#> Fetching records 3501 to 4000 
#> Fetching records 4001 to 4500 
#> Fetching records 4501 to 5000 
#> Fetching records 5001 to 5500 
#> Fetching records 5501 to 6000 
#> Fetching records 6001 to 6500 
#> Fetching records 6501 to 7000 
#> Fetching records 7001 to 7131 
#> Searching for year: 2026 
#> Search term: "Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab] AND ("2026/01/01"[dp] : "2026/12/31"[dp]) 
#> Found 1809 articles matching the search term.
#> Fetching records 1 to 500 
#> Fetching records 501 to 1000 
#> Fetching records 1001 to 1500 
#> Fetching records 1501 to 1809
# write_json(a, "pubmed_abstracts.json", pretty=TRUE)
b <- group_by_time_interval(a)
p <- plot_time_interval(b)
```

``` r
p
```

![Joined scatter plot of the number of new PubMed entries per week
containing Mendelian randomis/zation in the
title.](mr_files/figure-html/mr_fig-1.svg)
