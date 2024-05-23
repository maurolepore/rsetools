# has the expected structure

    Code
      str(out)
    Output
      tibble [1 x 4] (S3: tbl_df/tbl/data.frame)
       $ dataset   : chr "dataset"
       $ name      : chr "x"
       $ typeof    : Named chr "double"
        ..- attr(*, "names")= chr "x"
       $ definition: chr NA

# with unsupported class errors gracefully

    Code
      use_dictionary(1)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'use_dictionary' applied to an object of class "c('double', 'numeric')"

# with a list, warns `name` is unused

    Code
      use_dictionary(data, name = "nm")
    Condition
      Warning:
      When `data` is a list `name` is ignored.
    Output
      # A tibble: 2 x 4
        dataset name  typeof definition
        <chr>   <chr> <chr>  <chr>     
      1 a       x     double <NA>      
      2 b       y     double <NA>      

