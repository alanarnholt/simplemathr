% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataSetDocumentation.R
\docType{data}
\name{Ability}
\alias{Ability}
\title{Perceived math ability for 13-year olds by gender}
\format{A data frame with 400 observations on the following 2 variables.
\describe{ 
\item{Gender}{a factor with levels \code{boy} and \code{girl}} 
\item{Skill}{a factor with levels \code{aboveavg}, \code{average}, \code{belowavg},
\code{hopeless}, and \code{superior}}
}}
\source{
Kitchens, L. J. (2003) \emph{Basic Statistics and Data Analysis}.
Duxbury
}
\usage{
Ability
}
\description{
Data used in Exercise 8.57
}
\examples{

T1 <- xtabs(~Gender + Skill, data = Ability)
T1
chisq.test(T1)

}
\keyword{datasets}
