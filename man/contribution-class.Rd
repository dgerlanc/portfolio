\name{contribution-class}
\docType{class}
\alias{contribution-class}
\alias{plot,contribution,missing-method}
\alias{show,contribution-method}
\alias{summary,contribution-method}

\title{Class "contribution"}
\description{Portfolio contribution of numeric measures (intervals) and categories.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("contribution", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{data}:}{Object of class \code{"list"} containing
      contributions, as data.frame objects.  The names of this list
      correspond to the category variable names. }
  }
}
\section{Methods}{
  \describe{
    \item{plot}{\code{signature(x = "contribution", y = "missing")}: Plot
      this object. }
    \item{show}{\code{signature(object = "contribution")}: show this
      object, briefly. }
    \item{summary}{\code{signature(object = "contribution")}: display a
      summary of this object. }
  }
}
\author{ Jeff Enos \email{jeff@kanecap.com}}
\keyword{classes}
