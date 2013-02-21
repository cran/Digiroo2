\name{StudyArea}
\alias{StudyArea}
\docType{data}
\title{
The study site at Sundown National Park, Queensland, Australia.
}
\description{
This dataset contains a spatial polygon of the study area at Sundown National Park  
}
\usage{data(StudyArea)}

\details{
This S4 class dataset contains a \code{SpatialPolygonsDataFrame} object of the study area at Sundown National Park.

The coordinates are given in meters GDA94/MGA zone 55.
}
\source{
\url{www.berglabs.org} 
}

\examples{

## Load required packages
library(maptools)

## Load study data
data(StudyArea)

## Plot study area polygon
plot(StudyArea,border=2)

}
\keyword{datasets}
