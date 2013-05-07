\name{assay}
\alias{assay}
\docType{data}
\title{Assay Research rankings as of 2004-12-31}
\description{
  A universe of the 5000 largest global stocks as of 2004-12-31, and a
  flag indicating whether a security was ranked by Assay Research at
  that time.

  Special thanks to Assay Research for granting us permission to release
  this data.
}
\usage{data(assay)}
\format{
  A data frame with 5000 observations on the following 11 variables.
  \describe{
    \item{\code{date}}{A vector containing a single \code{Date}: \code{2004-12-31}.}
    \item{\code{id}}{A \code{character} vector of SEDOLs and CUSIPs.}
    \item{\code{symbol}}{A \code{character} vector of symbols.}
    \item{\code{name}}{A \code{character} vector of the names of the companies.}
    \item{\code{country}}{A \code{factor} with levels \code{AUS} \code{AUT} \code{BEL} \code{CHE} \code{DEU} \code{DNK} \code{ESP} \code{FIN} \code{FRA} \code{GBR} \code{HKG} \code{ITA} \code{JPN} \code{NLD} \code{NOR} \code{NZL} \code{SGP} \code{SWE} \code{USA}.}
    \item{\code{currency}}{A \code{factor} with levels \code{AUD} \code{CHF} \code{DKK} \code{EUR} \code{GBP} \code{HKD} \code{JPY} \code{NOK} \code{NZD} \code{SEK} \code{SGD} \code{USD}.}
    \item{\code{price}}{A \code{numeric} vector of prices.}
    \item{\code{sector}}{A \code{factor} with levels \code{Communications} \code{Conglomerates} \code{Cyclicals} \code{Energy} \code{Financials} \code{Industrials} \code{Materials} \code{Staples} \code{Technology} \code{Utilities}}
    \item{\code{sec}}{An alternative sector specification. This factor has levels \code{CND}, \code{CNS}, \code{COM}, \code{ENE}, \code{FIN}, \code{HTH}, \code{IND}, \code{MAT}, \code{TEC} and \code{UTL}.}
    \item{\code{ind}}{Industry specification. This factor has levels \code{AERDF}, \code{AIRLN}, \code{AUTOP}, \code{AUTOS}, \code{BANKS}, \code{BEVGS}, \code{BIOTC}, \code{BUILD}, \code{CHEMS}, \code{CNENG}, \code{CNFIN}, \code{CNMAT}, \code{COMEQ}, \code{COMPT}, \code{COMSS}, \code{CONGL}, \code{CPMKT}, \code{DICNS}, \code{DISTR}, \code{DVFIN}, \code{DVTEL}, \code{ELEQI}, \code{ELEQT}, \code{ELUTL}, \code{ENEQS}, \code{FDPRD}, \code{FDRET}, \code{GSUTL}, \code{HEPSV}, \code{HEQSP}, \code{HETEC}, \code{HOTEL}, \code{HSDUR}, \code{HSPRD}, \code{INSUR}, \code{INTSS}, \code{IPPET}, \code{ITCAT}, \code{ITCON}, \code{LEISR}, \code{LFSCI}, \code{LOGIS}, \code{MACHN}, \code{MEDIA}, \code{METAL}, \code{MGFIN}, \code{MLRET}, \code{MLUTL}, \code{OFFIC}, \code{OILGS}, \code{PACKG}, \code{PAPER}, \code{PHARM}, \code{PRPRD}, \code{REALE}, \code{REDEV}, \code{REITS}, \code{RRAIL}, \code{SEMIP}, \code{SEMIS}, \code{SHIPS}, \code{SMOKE}, \code{SOFTW}, \code{SPRET}, \code{TEXAP}, \code{TRADE}, \code{TRINF}, \code{WIREL} and \code{WTUTL}}
    \item{\code{liq}}{A \code{numeric} vector of liquidities.}
    \item{\code{on.fl}}{A \code{logical} vector indicating presence on the
      Assay Focus List as of 2004-12-31.}
    \item{\code{ret.0.1.m}}{A \code{numeric} vector of one-month forward returns}
    \item{\code{ret.0.3.m}}{A \code{numeric} vector of three-month forward returns}
    \item{\code{ret.0.6.m}}{A \code{numeric} vector of one-month forward returns}
    \item{\code{ret.1.0.m}}{A \code{numeric} vector of one-month prior returns}
    \item{\code{ret.6.0.m}}{A \code{numeric} vector of six-month prior returns}
    \item{\code{ret.12.0.m}}{A \code{numeric} vector of twelve-month prior returns}
    \item{\code{mn.dollar.volume.20.d}}{A \code{numeric} vector of mean dollar volumes of the past 20 days}
    \item{\code{md.dollar.volume.120.d}}{A \code{numeric} vector of median dollar volumes of the past 120 days}
    \item{\code{cap.usd}}{A \code{numeric} vector of market capitalisation in USD.}
    \item{\code{cap}}{A \code{numeric} vector of market capitalisation in local currency.}
    \item{\code{sales}}{Annual gross sales of the company.}   
    \item{\code{net.income}}{Annual net income of the company.}       
    \item{\code{common.equity}}{Annual common equity of the company.}
  }
}
\examples{
data(assay)
}
\keyword{datasets}
