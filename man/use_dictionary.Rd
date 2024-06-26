% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_dicitionary.R
\name{use_dictionary}
\alias{use_dictionary}
\alias{use_dictionary.list}
\alias{use_dictionary.data.frame}
\title{Create a dictionary}
\usage{
use_dictionary(data, ...)

\method{use_dictionary}{list}(data, ...)

\method{use_dictionary}{data.frame}(data, ..., name = NULL)
}
\arguments{
\item{data}{A data frame or list of data frames.}

\item{...}{Unused but necessary to support for extensions.}

\item{name}{Character giving an alternative name for the dataset.}
}
\value{
A \link[tibble:tibble]{tibble::tibble}.
}
\description{
Create a dictionary
}
\examples{
use_dictionary(mtcars)

use_dictionary(mtcars, name = "Motor Trend Car Road Tests")

data <- list(mtcars = mtcars, iris = iris)
use_dictionary(data)
}
