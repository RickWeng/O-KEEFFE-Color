% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/OkeeffeColor.R
\name{okeeffe.all.show}
\alias{okeeffe.all.show}
\title{Show all color palettes}
\usage{
okeeffe.all.show(name = NULL, n = NULL)
}
\arguments{
\item{name}{Name of selected plaettes. Name can be a selected palette name or a vector of selected palette names: \code{Black_Iris_II}, \code{Blue_and_Green_Music}, \code{Two_Pink_Shells}. If omitted, all palette names will be used.}

\item{n}{Color number of selected plaette. n should be larger than 1 and smaller than the maximum color number of the specific palette. If omitted, the maximum color number of the specific palette will be used.}
}
\value{
An image showing a specific plaette.
}
\description{
Visually show all selected palettes from Georgia O'Keeffe's painting.
}
\examples{
okeeffe.all.show()
okeeffe.all.show("Blue_and_Green_Music", 4)
okeeffe.all.show(c("Black_Iris_II", "Two_Pink_Shells"), 3)
}
