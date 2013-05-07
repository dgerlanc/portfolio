\name{dow.jan.2005}
\alias{dow.jan.2005}
\docType{data}
\title{DJIA for January, 2005}
\description{
  Basic descriptive and market data for those securities in the DJIA as
  of the end of January, 2005.
}
\usage{data(dow.jan.2005)}
\format{
  A data frame with 500 observations on the following 15 variables.
  \describe{
    \item{\code{symbol}}{a character vector}
    \item{\code{name}}{a character vector}
    \item{\code{cap.bil}}{a numeric vector}
    \item{\code{price}}{a numeric vector}
    \item{\code{sector}}{a factor with levels \code{Communications}
      \code{Conglomerates} \code{Cyclicals} \code{Energy}
      \code{Financials} \code{Industrials} \code{Materials} \code{Staples}
      \code{Technology} \code{Utilities}}
    \item{\code{month.ret}}{a numeric vector}
  }
}
\examples{
data(dow.jan.2005)
}
\keyword{datasets}
