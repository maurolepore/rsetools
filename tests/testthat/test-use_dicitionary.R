test_that("has the expected structure", {
  dataset <- data.frame(x = 1)
  out <- use_dictionary(dataset)
  expect_snapshot(str(out))
})

test_that("with unsupported class errors gracefully", {
  expect_snapshot(error = TRUE, {
    use_dictionary(1)
  })
})

test_that("is sensitive to `name`", {
  data <- data.frame(x = 1)
  out <- use_dictionary(data, name = "nm")
  expect_equal(out$dataset, "nm")
})
