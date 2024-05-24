#' Help find all installed packages matching a pattern
#'
#' It's useful when working with a family of packages which name share a pattern.
#'
#' @inheritParams base::grep
#'
#' @return Character vector.
#' @export
#'
#' @examples
#' # All packages starting with tilt
#' match_packages("tool")
match_packages <- function(pattern) {
  grep(pattern, rownames(utils::installed.packages()), value = TRUE)
}
