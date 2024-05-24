
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rsetools

<!-- badges: start -->

[![R-CMD-check](https://github.com/maurolepore/rsetools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/maurolepore/rsetools/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Research software engineering tools.

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
#>    dataset name  type   definition
#>    <chr>   <chr> <chr>  <chr>     
#>  1 mtcars  mpg   double <NA>      
#>  2 mtcars  cyl   double <NA>      
#>  3 mtcars  disp  double <NA>      
#>  4 mtcars  hp    double <NA>      
#>  5 mtcars  drat  double <NA>      
#>  6 mtcars  wt    double <NA>      
#>  7 mtcars  qsec  double <NA>      
#>  8 mtcars  vs    double <NA>      
#>  9 mtcars  am    double <NA>      
#> 10 mtcars  gear  double <NA>      
#> 11 mtcars  carb  double <NA>
```
