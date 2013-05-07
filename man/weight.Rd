\name{weight}
\alias{weight}
\title{ Calculate Position Weights }
\description{
  Compute position weights of various types from an input variable.
}
\usage{
weight(x, in.var, type, size, sides,
       weight.var = NULL, verbose = FALSE)
}
\arguments{
  \item{x}{ A data.frame containing the columns \code{in.var} and
    \code{weight.var} (if necessary). }
  \item{in.var}{ Character vector specifying the column in \code{x}
  that contains a ranking from which weights can be computed. }
  \item{type}{ Character vector specifying the method to use for weight
  creation.  Can be one of \code{c("relative", "equal", "linear",
    "sigmoid", "centroid", "complex")}. }
  \item{size}{ Character or numeric vector specifying the number of
    desired non-na weights per side in the result.  Can either be a
    positive number or one of \code{"all", "decile", "quintile",
      "tercile", "demile")}. }
  \item{sides}{ Character vector specifying the sides for which to
    create weights.  May be any nonempty subset of \code{"long",
      "short"}.}
  \item{weight.var}{ Numeric vector containing specifying the column in
    \code{x} that contains weight overrides.  Overrides are applied
    after weights have been computed.  Defaults to NULL. }
  \item{verbose}{ Be verbose.  Defaults to FALSE. }
}
\value{
  A numeric vector of weights the same length as \code{x}.

}
\author{Jeff Enos \email{jeff@kanecap.com}}
\examples{
data <- data.frame(in.var = 1:50, weight.var = NA)
data$in.var <- as.numeric(data$in.var)

weight(data, in.var = "in.var", type = "linear", size = "quintile",
       sides = c("long", "short"))

data$weight.var[25] <- -0.05
weight(data, in.var = "in.var", type = "linear", size = "quintile",
       sides = c("long", "short"), weight.var = "weight.var")
}
\keyword{file}
