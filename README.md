
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rsetools

<!-- badges: start -->

[![R-CMD-check](https://github.com/maurolepore/rsetools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/maurolepore/rsetools/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of rsetools is to make research software engineering easier.

## Installation

You can install the development version of rsetools from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("maurolepore/rsetools")
```

## Example

``` r
library(rsetools)

use_dictionary(mtcars)
#> # A tibble: 11 × 4
#>    dataset column typeof definition
#>    <chr>   <chr>  <chr>  <chr>     
#>  1 data    mpg    double <NA>      
#>  2 data    cyl    double <NA>      
#>  3 data    disp   double <NA>      
#>  4 data    hp     double <NA>      
#>  5 data    drat   double <NA>      
#>  6 data    wt     double <NA>      
#>  7 data    qsec   double <NA>      
#>  8 data    vs     double <NA>      
#>  9 data    am     double <NA>      
#> 10 data    gear   double <NA>      
#> 11 data    carb   double <NA>
```
