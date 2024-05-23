#' Create a dictionary
#'
#' This is a generic function with support for common objects. You may implement
#' other methods.
#'
#' @param data A data frame or list of data frames.
#' @param name Depends on the class of `data`:
#' * `data.frame`: Character giving an alternative name for the dataset.
#' * `list`: Unused.
#'
#' @return A [tibble::tibble].
#' @export
#'
#' @examples
#' use_dictionary(mtcars)
#'
#' use_dictionary(mtcars, name = "Motor Trend Car Road Tests")
#'
#' data <- list(mtcars = mtcars, iris = iris)
#' use_dictionary(data)
use_dictionary <- function(data, name = NULL) {
  UseMethod("use_dictionary")
}

#' @export
use_dictionary.list <- function(data, name = NULL) {
  if (!is.null(name)) {
    rlang::warn("When `data` is a list `name` is ignored.")
  }

  out <- as.list(vector(length = length(data)))
  for (i in seq_along(out)) {
    out[[i]] <- use_dictionary(data[[i]], name = names(data[i]))
  }

  Reduce(rbind, out)
}

#' @export
use_dictionary.data.frame <- function(data, name = NULL) {
  dataset <- name %||% deparse(substitute(data))
  name <- names(data)
  typeof <- unlist(lapply(data, typeof))
  definition <- NA_character_

  tibble::tibble(dataset, name, typeof, definition)
}
