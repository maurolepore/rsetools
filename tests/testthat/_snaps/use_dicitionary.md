# has the expected structure

    Code
      str(out)
    Output
      tibble [1 x 3] (S3: tbl_df/tbl/data.frame)
       $ data      : chr "data"
       $ typeof    : chr "character"
       $ definition: chr NA

# with unsupported class errors gracefully

    Code
      use_dictionary(1)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'use_dictionary' applied to an object of class "c('double', 'numeric')"

