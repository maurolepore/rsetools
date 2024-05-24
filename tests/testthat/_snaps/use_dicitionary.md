# has the expected structure

    Code
      str(out)
    Output
      tibble [1 x 4] (S3: tbl_df/tbl/data.frame)
       $ dataset   : chr "dataset"
       $ name      : chr "x"
       $ type      : Named chr "double"
        ..- attr(*, "names")= chr "x"
       $ definition: chr NA

# with unsupported class errors gracefully

    Code
      use_dictionary(1)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'use_dictionary' applied to an object of class "c('double', 'numeric')"

