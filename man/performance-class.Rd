\name{performance-class}
\docType{class}
\alias{performance-class}
\alias{plot,performance,missing-method}
\alias{initialize,performance-method}
\alias{show,performance-method}
\alias{summary,performance-method}

\title{Class "performance"}
\description{Return, per-security return, and exposed portfolio object
  for one period.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("performance", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{ret}:}{Object of class \code{"numeric"} containing the
      total return for the period. }
    \item{\code{profit}:}{Object of class \code{"numeric"} containing
      the profit for the period, as a monetary amount.}
    \item{\code{missing.price}:}{Object of class \code{"numeric"}
      containing the number of missing prices encountered during
      performance calculation.}
    \item{\code{missing.return}:}{Object of class \code{"numeric"}
      containing the number of missing returns encountered during
      performance calculation.}
    \item{\code{ret.detail}:}{Object of class \code{"data.frame"}
      containing the per-security return detail for the period. }
    \item{\code{t.plus.one}:}{Object of class \code{"portfolioBasic"}
      containing the portfolio at the end of the period. }
  }
}
\section{Methods}{
  \describe{
    \item{plot}{\code{signature(x = "performance", y = "missing")}: Plot
      this object. }
    \item{show}{\code{signature(object = "performance")}: show this
      object, briefly. }
    \item{summary}{\code{signature(object = "performance")}: display a
      summary of this object. }
  }
}
\author{ Jeff Enos \email{jeff@kanecap.com}}
\keyword{classes}
