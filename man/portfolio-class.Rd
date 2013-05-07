\name{portfolio-class}
\docType{class}
\alias{portfolio-class}

\alias{+,portfolio,portfolio-method}
\alias{all.equal,portfolio,portfolio-method}
\alias{calcShares,portfolio-method}
\alias{calcWeights,portfolio-method}
\alias{contribution,portfolio,character-method}
\alias{create,portfolio-method}
\alias{securityInfo,portfolio,character-method}
\alias{getYahooData,portfolio,character-method}

\alias{expandData,portfolio-method}
\alias{expose,portfolio,trades-method}
\alias{initialize,portfolio-method}
\alias{performance,portfolio-method}
\alias{portfolioDiff,portfolio,portfolio-method}
\alias{updatePrices,portfolio,character,numeric-method}
\alias{summary,portfolio-method}

\alias{calcShares}
\alias{calcWeights}
\alias{securityInfo}
\alias{getYahooData}

\alias{expandData}
\alias{expose}
\alias{updatePrices}

\alias{portfolioOrNull-class}

\title{Class "portfolio"}
\description{ Class "portfolio" extends class "portfolioBasic" to include
price and share information. Price information must
  be included in the supplementary "data" slot.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("portfolio", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{equity}:}{Object of class \code{"numeric"} containing
      the equity for this portfolio.e}
    \item{\code{file}:}{Object of class \code{"character"} containing
      the file from which this portfolio was loaded, if applicable. }
    \item{\code{price.var}:}{Object of class \code{"character"}
      containing the name of the column in the "data" slot to be used in
    share and weight calculations.}
    \item{\code{shares}:}{Object of class \code{"data.frame"} containing
    a data frame of shares for each position.  Must have a unique column
    called "id".}
    \item{\code{name}:}{Object of class \code{"character"} containing
      the name for this portfolio.}
    \item{\code{instant}:}{Object of class \code{"ANY"} containing the
      instant to which the portfolio pertains.}
    \item{\code{data}:}{Object of class \code{"data.frame"} containing
      supplementary information about the positions in this portfolio.
      Must include a unique "id" column.  }
    \item{\code{id.var}:}{Object of class \code{"character"}
      containing the name of the column in the \code{data} slot to be used as
      a unique identifier. }
    \item{\code{symbol.var}:}{Object of class \code{"character"}
      containing the name of the column in the "data" slot to be used as
      a descriptive symbol. }
    \item{\code{in.var}:}{Object of class \code{"character"} containing
      the name of the column in the "data" slot to be used as a rank
      vector in calls to \code{create}. }
    \item{\code{weight.var}:}{Object of class \code{"character"}
    containing the name of the column in the "data" slot to be used as
    weight overrides in calls to \code{create}.}
    \item{\code{weight.style}:}{Object of class \code{"character"}
    specifying how to calculate weights in this portfolio.  Valid
    entries are:

    \itemize{
      \item \code{"sides.separate"}: The default.  Calculate weight of a
      position with respect to the total market value of positions on the
      same side.
      \item \code{"long.tmv"}: Calculate weight of a
      position with respect to the total market value of long positions.
      \item \code{"short.tmv"}: Calculate weight of a
      position with respect to the (positive) total market value of short
      positions.
      \item \code{"reference.equity"}: Calculate weight of a position
      relative to the reference equity in the \code{equity} slot.  The
      \code{equity} slot must contain a numeric vector of length 1 for
      this style.
    }
    }
    \item{\code{ret.var}:}{Object of class \code{"character"} containing
    the name of the column in the "data" slot to be used as the return
    in calls to \code{performance}.}
    \item{\code{type}:}{Object of class \code{"character"} containing
      the type of weight formation to use in calls to \code{create}.
      May be one of "relative", "equal", "linear", "sigmoid",
      "centroid", or "complex".
      Defaults to \code{equal}. }
    \item{\code{size}:}{Object of class \code{"characterOrNumeric"}
      containing the size of the portfolio to use in calls to
      \code{create}.  May either contain the number of securities per
      side or one of "decile", "quintile", "quartile", "tercile", or
      "demile".  Defaults to \code{quintile}. }
    \item{\code{weights}:}{Object of class \code{"data.frame"}
      containing the data frame of weights for this portfolio's
      positions.  Must contain a unique column called "id". }
  }
}
\section{Extends}{
Class \code{"portfolioBasic"}, directly.
}
\section{Methods}{
  \describe{
    \item{+}{\code{signature(e1 = "portfolio", e2 = "portfolio")}}
    \item{all.equal}{\code{signature(target = "portfolio", current
	= "portfolio")}: Compare two \code{portfolio} objects for
      "near equality".  Two \code{portfolio} objects are \code{all.equal} iff
      they are \code{all.equal} as \code{portfolioBasic} objects, their
      \code{shares} slots contain exactly the same set of securities and
    shares vectors that are \code{all.equal}.}
    \item{calcShares}{\code{signature(object = "portfolio")}: calculate
      shares from price and weight information, and store the results in
    the \code{shares} slot.}
    \item{calcWeights}{\code{signature(object = "portfolio")}: calculate
      weights from share and price information, and store the results in
      the \code{weights} slot.}
    \item{create}{\code{signature(object = "portfolio")}: create a
      portfolio object in the same manner as \code{portfolioBasic}, but
      also compute share amounts.}
    \item{expandData}{\code{signature(object = "portfolio")}: ... }
    \item{expose}{\code{signature(object = "portfolio", trades =
	"trades")}: ... }
    \item{getYahooData}{\code{signature(object = "portfolio", symbol.var
	= "character")}: ... }
    \item{performance}{\code{signature(object = "portfolio")}: ... }
    \item{securityInfo}{\code{signature(object = "portfolio", id =
	"character")}: display information about position \code{id}
      within this portfolio. }
    \item{getYahooData}{\code{signature(object = "portfolio", symbol.var
	= "character")}: Returns data for P/E Ratio, Book Value, Market Cap,
      Price/Book, and Price/Sales.}
    \item{updatePrices}{\code{signature(object = "portfolio", id =
	"character", price = "numeric")}: ... }
  }
}
\author{Jeff Enos \email{jeff@kanecap.com}}
\keyword{classes}
