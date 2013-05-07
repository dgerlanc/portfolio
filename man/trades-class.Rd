\name{trades-class}
\docType{class}
\alias{trades-class}

\title{Class "trades" }
\description{An object of the class "trades" contains a data frame
  with columns "id", "side", and "shares" describing a simple list of
  trades to be performed.}
\section{Objects from the Class}{
  Objects can be created by calls of the form \code{new("trades", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{trades}:}{Object of class \code{"data.frame"} with
      columns "id", "side", and "shares". }
  }
}
\section{Methods}{
No methods defined with class "trades" in the signature.
}
\author{ Kyle Campbell and Daniel Gerlanc }
\seealso{
  \code{\link{tradelist-class}}
}
\examples{

df <- data.frame(id = c(1,2,3), side = c("B","X","C"), shares = c(10,20,30))

t <- new("trades", trades = df)

}
\keyword{classes}
