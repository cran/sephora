% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ndvi_derivatives.R
\name{ndvi_derivatives}
\alias{ndvi_derivatives}
\title{Calculates derivatives of idealized NDVI}
\usage{
ndvi_derivatives(amp, pha, degree, L)
}
\arguments{
\item{amp}{numeric vector specifying amplitude parameter}

\item{pha}{numeric vector specifying phase angle parameter}

\item{degree}{integer. What derivative's degree should be calculated? 
\code{degree=0} corresponds to harmonic regression fit}

\item{L}{integer giving the number of observations per period}
}
\value{
A function expression
}
\description{
Provides function expression of derivatives of an idealized NDVI curve
fitted through a harmonic regression model
}
\details{
This function returns the derivatives of \eqn{f(t)}, with respect
to \eqn{t}, when \eqn{f} has the representation:

\eqn{f(t) = \sum_{k=1}^{p} a[i] cos( (2  \pi k t)/L - \phi[i] )},

where \eqn{a} and \eqn{\phi} are substituted by the vectors \code{amp}
and \code{phase}, respectively. The degree of the derivative is given by the
argument \code{degree}.
}
\note{
For historic reasons, we ended up using the name \code{ndvi_derivatives}
for this function, but it can be used to calculate derivatives of any function
expression defined through \code{amp}, \code{pha}, \code{degree} and \code{L}.
}
\seealso{
\code{\link{phenopar}}, \code{\link{phenopar_polygon}}, \code{\link[geoTS]{haRmonics}}
}
