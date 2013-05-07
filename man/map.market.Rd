\name{map.market}
\alias{map.market}
\title{ Create a Map of the Market }
\description{
  Utility function for creating a "map of the market" visualization.
  Creates a treemap where rectangular regions of different size, color,
  and groupings visualize the stocks in a portfolio.
}
\usage{
map.market(id, area, group, color,
           scale = NULL,
           lab   = c("group"=TRUE, "id"=FALSE),
           main  = "Map of the Market",
           print = TRUE)
}
\arguments{
  \item{id}{ A vector storing the labels to be used for each stock. }
  \item{area}{ A vector storing the values to be used to calculate the
    areas of rectangles. }
  \item{group}{ A vector specifying the group (i.e. country, sector,
    etc.) to which each stock belongs. }
  \item{color}{ A vector storing the values to be used to calculate the
    color of rectangles. }
  \item{scale}{ An object of class \code{numeric} indicating the scale
    to be used in determining colors.}
  \item{lab}{ A logical vector of length 2 specifying whether group and 
    stock labels should be drawn.  If the two values are the same, the
    second may be omitted.
  }
  \item{main}{A title for the plot.}
  \item{print}{ An object of class \code{logical} indicating whether the
    map should be drawn. }
}
\author{Jeff Enos \email{jeff@kanecap.com}}
\examples{
data(dow.jan.2005)
map.market(id    = dow.jan.2005$symbol,
           area  = dow.jan.2005$price,
           group = dow.jan.2005$sector,
           color = 100 * dow.jan.2005$month.ret)

}
\keyword{file}
