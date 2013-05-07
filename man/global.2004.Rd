\name{global.2004}
\alias{global.2004}
\docType{data}
\title{Security data of large global companies for 2004}
\description{
Contains basic security, category, and return information for a
selection of large companies for each month of 2004.  While 500
companies are included each month, the set of companies changes each
month.
}
\usage{data(global.2004)}
\format{
  A data frame with 6000 observations on the following 16 variables.
  \describe{
    \item{\code{date}}{a Date}
    \item{\code{id}}{a character vector}
    \item{\code{symbol}}{a character vector}
    \item{\code{name}}{a character vector}
    \item{\code{country}}{a factor with levels \code{AUS} \code{AUT}
      \code{BEL} \code{CHE} \code{DEU} \code{DNK} \code{ESP} \code{FIN}
      \code{FRA} \code{GBR} \code{HKG} \code{ITA} \code{JPN} \code{NLD}
      \code{NOR} \code{SGP} \code{SWE} \code{USA}}
    \item{\code{currency}}{a factor with levels \code{AUD} \code{CHF}
      \code{DKK} \code{EUR} \code{GBP} \code{HKD} \code{JPY} \code{NOK}
      \code{SEK} \code{SGD} \code{USD}}
    \item{\code{cap}}{a numeric vector}
    \item{\code{cap.usd}}{a numeric vector}
    \item{\code{cap.bil}}{a numeric vector}
    \item{\code{price}}{a numeric vector}
    \item{\code{price.usd}}{a numeric vector}
    \item{\code{round.lot}}{a numeric vector}
    \item{\code{sector}}{a factor with levels \code{Communications}
      \code{Conglomerates} \code{Cyclicals} \code{Energy}
      \code{Financials} \code{Industrials} \code{Materials} \code{Staples}
      \code{Technology} \code{Utilities}}
    \item{\code{liquidity}}{a numeric vector}
    \item{\code{liq.w}}{a numeric vector}
    \item{\code{volume}}{a numeric vector}
    \item{\code{avg.volume}}{a numeric vector}
    \item{\code{ret.0.1.m}}{a numeric vector}
  }
}
\examples{
data(global.2004)
}
\keyword{datasets}
