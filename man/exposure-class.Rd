\name{exposure-class}
\docType{class}
\alias{exposure-class}
\alias{plot,exposure,missing-method}
\alias{show,exposure-method}
\alias{summary,exposure-method}

\title{Class "exposure"}
\description{Portfolio exposures to numeric measures and categories.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("exposure", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{data}:}{Object of class \code{"list"} containing
      exposures, as data.frame objects.  The names of this list
      correspond to the exposure variable names.  The special exposure
       "numeric" contains exposures to all numeric variables. }
  }
}
\section{Methods}{
  \describe{
    \item{plot}{\code{signature(x = "exposure", y = "missing")}: Plot
      this object. }
    \item{show}{\code{signature(object = "exposure")}: show the object,
    briefly. }
    \item{summary}{\code{signature(object = "exposure")}: display a
      summary of this object. }
  }
}
\author{ Jeff Enos \email{jeff@kanecap.com}}
\keyword{classes}
