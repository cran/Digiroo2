\name{Roos}
\alias{Roos}
\docType{data}
\title{
Social network study of Eastern grey kangaroos
}
\description{
This GPS dataset contains the locations of 10 Eastern grey kangaroos \emph{Macropus giganteus} monitored between 05/01/2010 to 21/12/2011 in South East Queensland, Australia. 
Data supplied E.C. Best from the School of Biological Sciences, University of Queensland, Australia.
}
\usage{data(Roos)}
\format{
  A data frame containing GPS location data of individual sightings of \emph{M. giganteus} with the following 3 variables.
  \describe{
    \item{\code{ID}}{a character vector giving the identity of each kangaroo}
    \item{\code{x}}{a numeric vector containing the x coordinate of each individual}
    \item{\code{y}}{a numeric vector containing the y coordinate of each individual}
  }
}
\details{
The coordinates are given in meters GDA94/MGA zone 55
}
\source{
\url{www.berglabs.org}
}

\examples{

## Load required packages
library(adehabitatHR)

## Load study data
data(Roos)

## Convert df into a spatial points df object
coordinates(Roos) <- ~x+y

## Plot observed location data with individual kangaroos by colour
plot(Roos,col='red')

## Estimation of UD for the 10 kangaroos
ud <- kernelUD(Roos, same4all=TRUE)

## Plot the UD for the 10 kangaroos
image(ud)

}
\keyword{datasets}
