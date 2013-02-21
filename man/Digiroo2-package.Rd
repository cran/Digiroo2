\name{Digiroo2-package}
\alias{Digiroo2-package}
\alias{Digiroo2}
\docType{package}
\title{
An application programming interface for generating null models of social contacts based on individuals' space use
}
\description{
\pkg{Digiroo2} is an R package developed by researchers at the University of Queensland to investigate association patterns and social structure in wild animal populations. Proximity between individuals is generally considered to be an appropriate proxy for associations and pairwise association indices are the most widely used technique for analysing animal social structure. However, little attention is given to identify how patterns of spatial overlap affect these association patterns (Carter et al. 2009). For example, do individuals associate randomly with others with whom they share home ranges, or do some individuals go out of their way to associate with or avoid particular individuals? This program uses home range methodologies to build a null model of space use with individuals exhibiting a 'random' social structure. Random points may be generated within a specified home range contour or according to the Utilization Distribution (UD). Expected associations of individuals are extracted based on probability of occurrence and the proximity between home range weighted random points. Association matrices can be generated from multiple permutations for analysis using SOCPROG 2.4 (Whitehead 2009) to create 'expected' pairwise half-weight association indices (HWIs). These may be compared with the 'observed' HWIs from field observations to reveal whether pairs of animals associate more (= attraction) or less (= avoidance) than expected by chance.
}
\details{
\tabular{ll}{
Package: \tab Digiroo2\cr
Type: \tab Package\cr
Version: \tab 0.6\cr
Date: \tab 2013-02-21\cr
License: \tab GPL (>= 2)\cr
}
}
\author{
Ross Dwyer, Emily Best and Anne Goldizen, \emph{Behavioural Ecology Research Group (BERG), School of Biological Sciences, University of Queensland, Queensland, Australia.}

Maintainer: Ross Dwyer \email{ross.dwyer@uq.edu.au}
}

\references{
Carter A.J., MacDonald, S.L., Thompson, V.A. & Goldizen, A.W. (2009) Structured association patterns and their energetic benefits in female eastern grey kangaroos, \emph{Macropus giganteus}. Animal Behaviour 77: 839-846.

Whitehead, H. (2009) SOCPROG programs: analysing animal social structures. Behavioral Ecology and Sociobiology 63: 765-778.
}

\keyword{ package }



