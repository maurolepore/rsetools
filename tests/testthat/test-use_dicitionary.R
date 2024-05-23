test_that("has the expected structure", {
  data <- data.frame(x = 1)
  out <- use_dictionary(data)
  expect_snapshot(str(out))
})

test_that("with unsupported class errors gracefully", {
  expect_snapshot(error = TRUE, {
    use_dictionary(1)
  })
})
