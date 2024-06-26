% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/match_packages.R
\name{match_packages}
\alias{match_packages}
\title{Help find all installed packages matching a pattern}
\usage{
match_packages(pattern)
}
\arguments{
\item{pattern}{character string containing a \link[base]{regular expression}
    (or character string for \code{fixed = TRUE}) to be matched
    in the given character vector.  Coerced by
    \code{\link[base]{as.character}} to a character string if possible.  If a
    character vector of length 2 or more is supplied, the first element
    is used with a warning.  Missing values are allowed except for
    \code{regexpr}, \code{gregexpr} and \code{regexec}.}
}
\value{
Character vector.
}
\description{
It's useful when working with a family of packages which name share a pattern.
}
\examples{
# All packages starting with tilt
match_packages("tool")
}
