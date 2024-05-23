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

test_that("for data frames, it's sensitive to `name`", {
  data <- data.frame(x = 1)
  out <- use_dictionary(data, name = "nm")
  expect_equal(out$dataset, "nm")
})

test_that("with a list, warns `name` is unused", {
  data <- list(a = data.frame(x = 1), b = data.frame(y = 1))
  expect_snapshot(use_dictionary(data, name = "nm"))
})

test_that("is vectorized over `data`", {
  data <- list(a = data.frame(x = 1), b = data.frame(y = 1))
  out <- use_dictionary(data)
  expect_equal(out$dataset, c("a", "b"))
})
