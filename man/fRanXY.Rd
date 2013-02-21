\name{fRanXY}
\alias{fRanXY}
\title{
Extract random points from within an individual's home range
}
\description{
Extracts either either a random point from a home range vertice (i.e. a \code{SpatialPolygonsDataFrame} object) or a probability-weighted random point from a Utilisation Distribution (i.e. a \code{SpatialGridDataFrame} object)
}
\usage{
fRanXY(x, iextract)
}
\arguments{
  \item{x}{
a numeric vector representing the individuals of interest. This number relates to order in which animals are listed within the \code{iextract} object
}
  \item{iextract}{
either a \code{SpatialPolygonsDataFrame} object containing the vertice of interest or a \code{SpatialGridDataFrame} object containing the utilisation distribution of interest
}
}
\author{
Ross Dwyer \email{ross.dwyer@uq.edu.au}
}


\examples{

## Load required packages
library(adehabitatHR)
library(raster)

## Load study data
data(StudyArea)
data(Roos)

coordinates(Roos) <- ~x+y

## Estimation of UD and KUD 95% for the 10 animals
ud <- kernelUD(Roos,h="href",same4all=TRUE)
ver95 <- getverticeshr(ud,95,unin = c("m"),unout=c("ha"))

## Conversion from a adehabitat UDm object into a sgdf object
udsgdf <- as(estUDm2spixdf(ud),"SpatialGridDataFrame")

## For 3 animals, extract a random point falling within their respective KUD 95%
fRanXY(1:3,ver95)

## For 3 animals, extract a probability weighted random point falling within 
## their respective utilisation distributions
fRanXY(1:3,udsgdf)
}

