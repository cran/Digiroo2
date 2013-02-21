\name{fDrawfigure}
\alias{fDrawfigure}
\title{
Plot the location of the random point falling within an individual's home range
}
\description{
fDrawfigure extracts either a random point or a probability weighted random point falling within a specified home range. The random point, the observed locations, the specified ud vertice or the utilisation distribution can be plotted on a user-defined background.
}
\usage{
fDrawfigure(x, iextract, idataxy = NULL, istudy = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a numeric vector representing the individual to be plotted. This number relates to order in which animals are listed within the iextract object
}
  \item{iextract}{
either a SpatialPolygonsDataFrame object containing the vertice of interest or a SpatialGridDataFrame object containing the utilisation distribution of interest
}
  \item{idataxy}{
an optional dataframe containing the animal locations
}
  \item{istudy}{
optional background layer for the points to be plotted. This can be a spatial polygon object, a raster or blank = NULL
}
}

\author{
Ross Dwyer \email{ross.dwyer@uq.edu.au}
}

\examples{

## Load required packages
library(adehabitatHR)

## Load study data
data(StudyArea)
data(Roos)

# Subset the data for only 1 individual
RooSubid <- 'Stripes'
RooSub <- subset(Roos,Roos$ID==RooSubid)
RooSub$ID <- as.character(RooSub$ID)

coordinates(RooSub) <- ~x+y

## Estimation of UD and KUD 95% for 1 animal
ud <- kernelUD(RooSub,h="href",same4all=TRUE)
ver95 <- getverticeshr(ud,95,unin = c("m"),unout=c("ha"))
udsgdf <- as(estUDm2spixdf(ud),"SpatialGridDataFrame")

## Extract random points falling within animal #1's KUD 95%
fDrawfigure(1,ver95,RooSub,StudyArea) 

## Extract probability-weighted random points falling within 
## animal #1's UD and draw on map of the study area. 
fDrawfigure(1,udsgdf,RooSub,StudyArea)
}
