\name{tradelist-class}
\docType{class}
\alias{tradelist-class}
\alias{tradelist}
\alias{actualCols,tradelist-method}
\alias{calcActual,tradelist-method}
\alias{calcCandidates,tradelist,portfolio,portfolio-method}
\alias{calcChunksActual,tradelist-method}
\alias{calcChunks,tradelist-method}
\alias{calcSwapsActual,tradelist-method}
\alias{calcSwaps,tradelist-method}
\alias{calcRanks,tradelist-method}
\alias{candidatesCols,tradelist-method}
\alias{chunksCols,tradelist-method}
\alias{dummyChunks,tradelist-method}
\alias{initialize,tradelist-method}
\alias{ranksCols,tradelist-method}
\alias{restrictedCols,tradelist-method}
\alias{securityInfo,tradelist,character-method}
\alias{show,tradelist-method}
\alias{trimSide,tradelist-method}

\title{Class "tradelist"}
\description{
  Note: This class is a rough first pass and will change drastically in
  future releases.
  
  An object of the class "tradelist" containing a data frame of trades
  and a data frame of supplementary information.}  \section{Objects from
  the Class}{ Objects can be created by calls of the form
  \code{new("tradelist", orig, target, ...)}.

}
\section{Slots}{
  \describe{
    \item{\code{type}:}{Object of class \code{"character"}
      specifying the type of the tradelist.  Must be \code{"all"} or
      \code{"ranks"}.}
    
    \item{\code{id.var}:}{Object of class \code{"character"}
      containing the name of the column in the \code{data} slot to be
      used as a unique identifier. }

    \item{\code{price.var}:}{Object of class \code{"character"}
      specifying the column in the \code{data} slot to be used as the
      reference price.  Defaults to \code{price.usd}.}
    
    \item{\code{candidates}:}{Object of class \code{"data.frame"}
      containing one row for each candidate trade.}

    \item{\code{ranks}:}{Object of class \code{"data.frame"} where
      candidate trades have been interleaved by trade type (B,S,X,C) and
      assigned a unique rank, "rank.t".}

    \item{\code{chunks}:}{Object of class \code{"data.frame"} that
      contains one row for each chunk, a smaller portion of an order.}

    \item{\code{swaps}:}{Object of class \code{"data.frame"} where buys
      and sells have been matched with other shorts and covers of similar
      market value and desirability.}

    \item{\code{swaps.actual}:}{Object of class \code{"data.frame"}
      where the least desirable chunks that would exceed if
      "turnover" if ordered have been removed.}

    \item{\code{actual}:}{Object of class \code{"data.frame"} where the
      chunks have been rolled up into one row/order per security.}

    \item{\code{final}:}{Object of class \code{"trades"} containing
      the most basic information on the set of trades in the tradelist.}

    \item{\code{chunks.actual}:}{Object of class \code{"data.frame"}
      where "swaps" have been turned back into chunks and each chunk has
      its own row.}

    \item{\code{sorts}:}{Object of class \code{"optionalList"} which may
      be interpreted as a list of key-value pairs.  The key is the name of
      the sort and must exist as a column in the "data" slot.  The numeric
      value expresses the relative weight of the sort.}

    \item{\code{rank.sorts}:}{Object of class \code{"list"}, where the
      names of the elements are the names of the sorts defined in the
      "sorts" list and the elements are data frames, each of which
      contains a ranking of the candidate trades created by applying an
      individual sort.}

    \item{\code{regions}:}{Object of class \code{"character"}}

    \item{\code{chunk.usd}:}{Object of class \code{"numeric"} that
      expresses the minimum unsigned market value in US dollars of a
      chunk. Defaults to \$10,000.}

    \item{\code{trade.usd.min}:}{Object of class \code{"numeric"} that
      expresses the minimum unsigned market value a trade must have in
      order to be placed.  Trades of lower market value are removed from
      the "candidates" data.frame and appended to the "restricted" data frame.}

    \item{\code{restrictions}:}{Object of class \code{"data.frame"} with
      1 row for each trade and three columns, "id", "type", and
      "reason".  "id" uniquely identifies the trade, "type" accepts a
      value of B, S, C, or X (buy, sell, cover, or short), expressing
      the type of trade that is prohibited, and "reason" is a label
      expressing why the restriction exists.}

    \item{\code{restricted}:}{Object of class \code{"data.frame"} that
      contains one row for every trade for which a restriction exists}

    \item{\code{to.equity}:}{Object of class \code{"logical"}
      expressing whether or not the algorithm should trade towards the
      value of \code{target.equity}}

    \item{\code{turnover}:}{Object of class \code{"numeric"} that
      expresses the maximum unsigned market value of all trades effected in
      one session.}

    \item{\code{tca}:}{Object of class \code{"character"} expressing
      whether or not to use trade cost adjustment.}

    \item{\code{rank.gain.min}:}{Object of class \code{"numeric"}
      specifying the minimum amount of difference between two trades'
      rank required in order for the pair to be considered as a swap.}
    
    \item{\code{target.equity}:}{Object of class \code{"numeric"}
      expressing the unsigned market value of the target portfolio.}

    \item{\code{mv.long.orig}:}{Object of class \code{"numeric"} The
      market value of the long side of the original portfolio.}

    \item{\code{mv.short.orig}:}{Object of class \code{"numeric"} The
      unsigned market value of the short side of the original portfolio}

    \item{\code{unrestricted}:}{Object of class \code{"logical"}
      specifying whether any restrictions should be applied, including
      checks for price and volume.}

    \item{\code{data}:}{Object of class \code{"data.frame"} containing
      supplementary information about the "tradelist".  Must contain an
      "id" column, a "price.usd" column, a "volume" column, and a column
      named after each element listed in "sorts".}

    \item{\code{verbose}:}{Object of class \code{"logical"} controlling
      whether methods on this object should be verbose.  Defaults to FALSE.}
  }
}
\section{Methods}{
  \describe{
    \item{actualCols}{\code{signature(object = "tradelist")}: Returns a
      vector with the following elements: "id", "side", "shares", "mv",
      \code{names(object@sorts), and "rank.t"}}

    \item{calcActual}{\code{signature(object = "tradelist")}: Rolls up the
      chunks calculated in \code{calcChunksActual} into single orders and stores the
      result as a data frame in the "actual" slot.}

    \item{calcCandidates}{\code{signature(object = "tradelist", orig =
	"portfolio", target = "portfolio")}: Builds a data frame of
      candidate trades with one row per trade by determining which positions
      have different numbers of shares in the original and target
      portfolios. Removes trades in the "restrictions" data frame,
      trades with a market value below "trade.usd.min", and trades that
      would cause a side change in one session, and appends these trades
      to the "restricted data frame."}

    \item{calcChunksActual}{\code{signature(object = "tradelist")}:
      Turns the swaps calculated in \code{calcSwapsActual} back into
      chunks and stores the results in a data frame in the
      "actual.chunks" slot.}

    \item{calcChunks}{\code{signature(object = "tradelist")}: Examines
      the data frame stored in the "ranks" slot, breaks the
      candidate trades into chunks of size "chunk.usd" or
      smaller, and stores the results in the "chunks" slot}

    \item{calcSwapsActual}{\code{signature(object = "tradelist")}:
      Examines the data frame stored in the "swaps" slot and removes
      swaps, which had they been processed as orders, would have
      exceeded the specified "turnover" of the tradelist.  Stores the results as a data
      frame in the "swaps.actual" slot.}

    \item{calcSwaps}{\code{signature(object = "tradelist")}: Using the
      "chunks" data frame created by the \code{calcChunks} method, pairs
      attractive chunks with other attractive chunks of similar market
      value and stores the results as a data frame in the \code{swaps} slot.}

    \item{calcRanks}{\code{signature(object = "tradelist")}: Using
      information from the \code{candidates} data frame, interleaves
      the trades and calculates an absolute rank for each trade,
      "rank.t".  Stores the results in the \code{ranks} slot}

    \item{candidatesCols}{\code{signature(object = "tradelist")}:
      Returns a vector of class \code{character} containing the
      following elements: "id", "orig", "target", "side", "shares", "mv"}

    \item{chunksCols}{\code{signature(object = "tradelist")}:  Returns a
      vector of class \code{character} containing the following
      elements: rankCols(object), "tca.rank", "chunk.shares",
      "chunk.mv", "chunk".}

    \item{dummyChunks}{\code{signature(object = "tradelist")}: Creates a
      data frame of dummy chunks for a given side and dollar amount
      (total.usd).  The supplied dollar amount, together with the tradelist
      object's chunk size, determines the number of rows in the resulting
      data frame.}

    \item{initialize}{\code{signature(.Object = "tradelist")}:
      Transparently calls \code{calcCandidates}, \code{calcRanks}, \code{calcChunks},
      \code{calcSwaps}, \code{calcSwapsActual}, \code{calcChunksActual}, \code{calcActual}
      to construct the \code{tradelist} object.}

    \item{ranksCols}{\code{signature(object = "tradelist")}: Returns a
      vector of class \code{character} containing the following
      elements: "id", "orig", "target", "side", "shares", "mv", \code{names(object@sorts)},
      "rank.t" }

    \item{restrictedCols}{\code{signature(object = "tradelist")}:  Returns a
      vector of class \code{character} containing the following
      elements: \code{candidatesCols(object)}, "reason".}

    \item{securityInfo}{\code{signature(object = "tradelist", id =
	"character")}: Returns detailed information regarding a security in
      the tradelist.}

    \item{show}{\code{signature(object = "tradelist")}: Prints a
      detailed summary of tradelist attributes.}

    \item{trimSide}{\code{signature(object = "tradelist")}: If the
      market value of the side passed as the "side" parameter to this
      function is is greater than market value of the side as specified
      by the "value" parameter, excises the least desirable trades on
      that side until the the market value of that side is less than
      value.  Returns a copy of the data frame stored in the "actual"
      slot with the trades that meet the forementioned conditions
      removed.}

  }
}

\author{Daniel Gerlanc \email{daniel@gerlanc.com}}
\keyword{classes}
