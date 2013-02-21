\name{fAssocplot}
\alias{fAssocplot}
\title{
Plot the random points and the corresponding association matrix
}
\description{
This function plots the output data spatially, allowing the user to visualise the random locations generated for individuals and the resulting associations defined by group memberships. This map can be plotted with or without individual ID labels.
}
\usage{
fAssocplot(dnndata, idataxy, iplotnames = FALSE)
}
\arguments{
  \item{dnndata}{
a \code{nb} type object
}
  \item{idataxy}{
A \code{SpatialPointsDataframe} object containing the random locatons of the animals
}
  \item{iplotnames}{
logical. Whether or not the user wants the animal IDs printed on the association plot. Default = FALSE
}
}

\author{
Ross Dwyer \email{ross.dwyer@uq.edu.au}
}

\seealso{
\code{\link{fAssoctable}}, \code{\link{fAssocmatrix}}, \code{\link{dnearneigh}}
}
\examples{

## Load required packages
library(adehabitatHR)

## Load the data
data(StudyArea)
data(Roos)

## Convert into a spatial object
coordinates(Roos) <- ~x+y

## Estimation of UD and KUD 95% for the 10 animals
ud <- kernelUD(Roos,h="href",same4all=TRUE)
ver95 <- getverticeshr(ud,95,unin = c("m"),unout=c("ha"))
udsgdf <- as(estUDm2spixdf(ud),"SpatialGridDataFrame")

## For all 10 individuals, extract probability weighted random points 
## falling within their respective utilisation distributions
ranXY <- fRanXY(1:10,udsgdf)
coordinates(ranXY) <- ~x+y

## Run Nearest neighbour function with those interactions < 50 m to generate the nb object
## See ?dnearneigh in the spdep package for more information
Gprox <- 50
dnn_digi <- dnearneigh(ranXY,0,Gprox,row.names=as.character(ranXY$ID))

## Plot and visualise these groups with and without animal IDS
fAssocplot(dnn_digi,ranXY,iplotnames=TRUE)
fAssocplot(dnn_digi,ranXY,iplotnames=FALSE)
}

