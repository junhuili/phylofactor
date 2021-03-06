% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pglm.R
\name{pglm}
\alias{pglm}
\title{Internal wrapper for \code{\link{glm}} for phylofactor}
\usage{
pglm(y, xx, frmla, smallglm = T, ...)
}
\arguments{
\item{y}{response variable}

\item{xx}{independent variable}

\item{frmla}{Formula for dependence of y on x}

\item{smallglm}{Logical. See \code{\link{PhyloFactor}}}

\item{...}{optional input arguments to \code{\link{glm}}}
}
\value{
glm object
}
\description{
Internal wrapper for \code{\link{glm}} for phylofactor
}
\examples{
x <- rnorm(10)
y <- x+rnorm(10)
pglm(y,x,y~x)
}
