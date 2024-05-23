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
  check_use_dictionary(data)

  tibble::tibble(
    dataset = deparse(substitute(data)),
    name = names(data),
    typeof = unlist(lapply(data, typeof)),
    definition = NA_character_
  )
}

check_use_dictionary <- function(data) {
  if (!inherits(data, "data.frame")) {
    cli::cli_abort("`data` must be a data frame, but it's a {class(data)}.")
  }
}
