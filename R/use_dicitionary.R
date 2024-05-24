#' Create a dictionary
#'
#' @param data A data frame or list of data frames.
#' @param ... Unused but necessary to support for extensions.
#' @param name Character giving an alternative name for the dataset.
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
use_dictionary <- function(data, ...) {
  UseMethod("use_dictionary")
}

#' @export
#' @rdname use_dictionary
use_dictionary.list <- function(data, ...) {
  out <- as.list(vector(length = length(data)))
  for (i in seq_along(out)) {
    out[[i]] <- use_dictionary(data[[i]], name = names(data[i]))
  }

  Reduce(rbind, out)
}

#' @export
#' @rdname use_dictionary
use_dictionary.data.frame <- function(data, ..., name = NULL) {
  dataset <- name %||% deparse(substitute(data))
  name <- names(data)
  typeof <- unlist(lapply(data, typeof))
  definition <- NA_character_

  tibble::tibble(dataset, name, typeof, definition)
}
