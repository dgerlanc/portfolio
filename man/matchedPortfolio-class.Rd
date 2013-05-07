\name{matchedPortfolio-class}
\docType{class}
\alias{matchedPortfolio-class}
\alias{show,matchedPortfolio-method}
\alias{summary,matchedPortfolio-method}
\alias{performance,matchedPortfolio-method}
\alias{exposure,matchedPortfolio,character-method}
\alias{contribution,matchedPortfolio,character-method}
\alias{plot,matchedPortfolio,missing-method}

\title{Class "matchedPortfolio"}
\description{An object of the class "matchedPortfolio" that contains an
  object of class "portfolioBasic" and a matrix of weights for
  portfolios that have been matched to the "portfolioBasic" according to
  variables specified in a formula.
  }
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("matchedPortfolio", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{formula}:}{an object of class \code{formula} specifying
      the treatment variable and the covariates on which to match.
    }
    \item{\code{original}:}{an object of class \code{"portfolioBasic"},
      the attributes of which will be used for matching.
    }
    \item{\code{matches}:}{Object of class \code{"matrix"} with a column
      for each matched portfolio.
    }
    \item{\code{method}:}{Object of class \code{"character"} specifying
      the matching method used to generate the matched portfolio.
    }
    \item{\code{omitted.control}:}{Object of class \code{"numeric"}
      containing the number of observations omitted from the control.
    }
    \item{\code{omitted.treatment}:}{Object of class \code{"numeric"}
      containing the number of observations omitted from the treatment.
    }
  }
}

\section{Methods}{
  \describe{
    \item{show}{\code{signature(object = "matchedPortfolio")}: prints basic
      information about the \code{original} portfolio and its matches.
    }
    \item{summary}{\code{signature(object = "matchedPortfolio")}: prints detailed
      information about the \code{original} portfolio and its matches.
    }
    \item{performance}{\code{signature(object = "matchedPortfolio")}:
      calculates the mean performance across all matched portfolios.
    }
    \item{exposure}{\code{signature(object = "matchedPortfolio", exp.var
      = "character")}: calculates the exposure across each variable
    in \code{exp.var}.
    } 
    \item{contribution}{\code{signature(object = "matchedPortfolio", contrib.var
      = "character")}: calculates the contribution across each variable
    in \code{contrib.var}.
    }
    \item{plot}{\code{signature(x = "matchedPortfolio", y = "missing")}:
      graphs \code{exposure} and \code{contribution}.
    }
  }
}

\section{Details}{
  The \code{matches} matrix contains as many rows as there are stocks in
  the \code{data} slot of \code{original} and as many columns as there
  are matched portfolios.  The row labels of the matrix are the values of
  \code{original@data[["id.var"]]} and each column is a matched
  portfolio.  The cell values are the weights of the stock in the
  portfolio.
}

\author{Daniel Gerlanc \email{dgerlanc@gmail.com}}

\seealso{
  \code{\link{portfolioBasic-class}}
}
\examples{

m.p <- new("matchedPortfolio")

}
\keyword{classes}
