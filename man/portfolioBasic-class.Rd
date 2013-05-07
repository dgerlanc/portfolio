\name{portfolioBasic-class}
\docType{class}
\alias{portfolioBasic-class}

\alias{+,portfolioBasic,portfolioBasic-method}
\alias{all.equal,portfolioBasic,portfolioBasic-method}
\alias{balance,portfolioBasic,character-method}
\alias{contribution,portfolioBasic,character-method}
\alias{create,portfolioBasic-method}
\alias{exposure,portfolioBasic,character-method}
\alias{matching,portfolioBasic-method}
\alias{performance,portfolioBasic-method}
\alias{plot,portfolioBasic,missing-method}
\alias{portfolioDiff,portfolioBasic,portfolioBasic-method}
\alias{scaleWeights,portfolioBasic-method}
\alias{show,portfolioBasic-method}
\alias{summary,portfolioBasic-method}
\alias{initialize,portfolioBasic-method}
\alias{mapMarket,portfolioBasic-method}

\alias{balance}
\alias{contribution}
\alias{create}
\alias{exposure}
\alias{matching}
\alias{performance}
\alias{portfolioDiff}
\alias{scaleWeights}
\alias{mapMarket}

\alias{portfolioBasicOrNull-class}

\title{Class "portfolioBasic"}
\description{An object of the lightweight class "portfolioBasic" contains a data frame
  of weights and a data frame of supplementary information.}
\section{Objects from the Class}{
  Objects can be created by calls of the form \code{new("portfolioBasic", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{name}:}{Object of class \code{"character"} containing
      the name of this portfolio. }
    \item{\code{instant}:}{Object of class \code{"ANY"} containing an
      instant to which this portfolio pertains.}
    \item{\code{data}:}{Object of class \code{"data.frame"} containing
      supplementary information about the positions in this portfolio.
      Must include a unique column specified in the \code{id.var} slot. }
    \item{\code{id.var}:}{Object of class \code{"character"}
      containing the name of the column in the \code{data} slot to be used as
      a unique identifier. }
    \item{\code{symbol.var}:}{Object of class \code{"character"}
      containing the name of the column in the \code{data} slot to be used as
      a descriptive symbol. }
    \item{\code{in.var}:}{Object of class \code{"character"} containing
      the name of the column in the \code{data} slot to be used as a rank
      vector in calls to \code{create}.}
    \item{\code{weight.var}:}{Object of class \code{"character"}
      containing the name of the column in the \code{data} slot to be used as
      weight overrides in calls to \code{create}. }
    \item{\code{ret.var}:}{Object of class \code{"character"} containing
    the name of the column in the \code{data} slot to be used as the return
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
\section{Methods}{
  \describe{
    \item{+}{\code{signature(e1 = "portfolioBasic", e2 = "portfolioBasic")}}
    \item{all.equal}{\code{signature(target = "portfolioBasic", current
	= "portfolioBasic")}: Compare two \code{portfolioBasic} objects for
      "near equality".  Two \code{portfolioBasic} objects are
      \code{all.equal} iff their \code{weights} slots contain exactly
      the same set of securities and weight vectors that are \code{all.equal}.}
    \item{balance}{\code{signature(object = "portfolioBasic", in.var = "character")}:
      balances the positions in portfolio \code{object} to be neutral to
    the categories specified by column \code{in.var} in the \code{data} slot.}
    \item{contribution}{\code{signature(object = "portfolioBasic",
	contrib.var = "character")}: returns one data.frame with
      contribution analysis for each element of \code{contrib.var}.  All
    results are returned in a list.}
    \item{create}{\code{signature(object = "portfolioBasic")}: use this
      object's creation parameters (such as in slots \code{size} and
      \code{type}) to create and return a new object of class
      \code{portfolioBasic}.}
    \item{exposure}{\code{signature(object = "portfolioBasic", exp.var
	= "character")}: returns one data.frame with
      exposure analysis for each element of \code{contrib.var}.  All
      results are returned in a list. }
    \item{matching}{\code{signature(object = "portfolioBasic",
	covariates = "character"}: returns a \code{matchedPortfolio} object
      containing \code{n.matches} matched portfolios.  \code{object} is the
      \code{portfolioBasic} to be matched.  \code{covariates} is a
      character vector of the attributes on which to match.  
    }
    \item{performance}{\code{signature(object = "portfolioBasic")}:
      returns a list containing performance results. }
    \item{plot}{\code{signature(x = "portfolioBasic", y = "missing")}: Plot
      this object. }
    \item{portfolioDiff}{\code{signature(object = "portfolioBasic", x =
	"portfolioBasic")}: computes the difference, as a
      \code{portfolioBasic} object, between two portfolios. }
    \item{scaleWeights}{\code{signature(object = "portfolioBasic")}:
      scale weights to the weights supplied in the \code{target}
      parameter.  To restrict the set of positions whose weights are
      scaled, use the \code{condition} argument. }
    \item{show}{\code{signature(object = "portfolioBasic")}: display
      this object, briefly. }
    \item{summary}{\code{signature(object = "portfolioBasic")}: display
      descriptive information about this portfolio. }
    \item{initialize}{\code{signature(object = "portfolioBasic")}:
      initialize the portfolio by calling \code{create}. }
    \item{mapMarket}{\code{signature(object = "portfolioBasic")}: create
      a map of the market plot of the portfolio. }
  }
}

\section{Matched portfolios}{
  
  The \code{matching} method allows one to benchmark a portfolio against
  a similar portfolio formed from other stocks in the universe.  The
  universe consists of all the stocks in the \code{data} slot of
  \code{original}.

  \code{matching} calculates a propensity score for each stock in the
  universe.  \code{covariates} determines which attributes are used to
  calculate the propensity score.  \code{covariates} must refer to the
  names of columns in the \code{data} slot of \code{original}.

  Matching accepts an optional argument, \code{method}, which sets the
  algorithm for determining the best match for each
  stock.  There are 2 available algorithms, \code{"greedy"} and
  \code{"sample"}.  \code{"greedy"} is the default and generates 1
  matched portfolio.  \code{"sample"} randomly matches each stock
  in \code{original} with one of the stocks in the universe.  Although the matching is random,
  stocks in \code{original} are most likely to be matched with stocks
  having similar propensity scores.

  \code{n.matches} is another optional argument to \code{matching} which
  determines the number of matched portfolios to generate.  Requesting
  more than 1 matched portfolio.  (\code{n.matches > 1}) while using
  \code{greedy} is not allowed.  When using \code{sample}, there is
  no bound on \code{n.matches}.

}

\author{Jeff Enos \email{jeff@kanecap.com} with contributions from
  Daniel Gerlanc \email{dgerlanc@gmail.com}}
\examples{
data(dow.jan.2005)

p <- new("portfolioBasic",
         id.var = "symbol",
         in.var = "price",
         sides = "long",
         ret.var = "month.ret",
         data = dow.jan.2005)

summary(p)

exposure(p, exp.var = c("price", "sector"))
performance(p)
contribution(p, contrib.var = c("cap.bil", "sector"))

p <- new("portfolioBasic",
         id.var = "symbol",
         in.var = "price",
         type = "linear",
         sides = c("long", "short"),
         ret.var = "month.ret",
         data = dow.jan.2005)

summary(p)

exposure(p, exp.var = c("price", "sector"))
performance(p)
contribution(p, contrib.var = c("cap.bil","sector"))
}
\keyword{classes}
