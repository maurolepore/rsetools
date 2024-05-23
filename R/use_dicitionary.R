#' Draft a data dictionary
#'
#' @param data A data frame.
#'
#' @return A [tibble::tibble].
#' @export
#'
#' @examples
#' use_dictionary(mtcars)
use_dictionary <- function(data) {
  UseMethod("use_dictionary")
}

#' @export
use_dictionary.data.frame <- function(data) {
  tibble::tibble(
    data = deparse(substitute(data)),
    name = names(data),
    typeof = unlist(lapply(data, typeof)),
    definition = NA_character_
  )
}
