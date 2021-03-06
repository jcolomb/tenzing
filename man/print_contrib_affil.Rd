% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print_contrib_affil.R
\name{print_contrib_affil}
\alias{print_contrib_affil}
\title{Generate contributors' affiliations}
\usage{
print_contrib_affil(infosheet, text_format = "rmd")
}
\arguments{
\item{infosheet}{validated infosheet}

\item{text_format}{formatting of the returned string. Possible values: "rmd", "html", "raw".
"rmd" by default.}
}
\value{
The output is string containing the contributors' name and
  the corresponding affiliations in the the order defined by the
  \code{Order in publication} column of the infosheet.
}
\description{
The function generates rmarkdown formatted contributors' affiliation text from
an infosheet validated with the \code{\link{validate_infosheet}} function. The 
infosheet must be based on the \code{\link{infosheet_template}}. The function can
return the output string as rmarkdown or html formatted text or without any formatting.
}
\section{Warning}{

The function is primarily developed to be the part of a shiny app. As the
  validation is handled inside of the app separately, the function can
  break with non-informative errors if running locally without first
  validating it.
}

\examples{
validate_infosheet(infosheet = infosheet_template)
print_contrib_affil(infosheet = infosheet_template)
}
\seealso{
Other output functions: 
\code{\link{print_roles_readable}()},
\code{\link{print_xml}()},
\code{\link{print_yaml}()}
}
\concept{output functions}
