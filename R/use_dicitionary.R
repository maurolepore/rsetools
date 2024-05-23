#' Draft a data dictionary
#'
#' @param data A data frame.
#' @param name Character. The dataset name.
#'
#' @return A [tibble::tibble].
#' @export
#'
#' @examples
#' use_dictionary(mtcars)
use_dictionary <- function(data, name = NULL) {
  check_use_dictionary(data)

  dataset <- name %||% deparse(substitute(data))
  name <- names(data)
  typeof <- unlist(lapply(data, typeof))
  definition <- NA_character_

  tibble::tibble(dataset, name, typeof, definition)
}

check_use_dictionary <- function(data) {
  if (!inherits(data, "data.frame")) {
    cli::cli_abort("`data` must be a data frame, but it's a {class(data)}.")
  }
}
