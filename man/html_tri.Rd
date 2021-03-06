% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/misc.R
\name{html_tri}
\alias{html_tri}
\title{Format Numeric Data with HTML Arrows}
\usage{
html_tri(x, format = round, subset = TRUE, symbols = c(up = "&#9650;",
  down = "&#9660;", nochange = "&#9632;"), colours = c(up = "green", down =
  "red", nochange = "black"))
}
\arguments{
\item{x}{A \code{\link{numeric}} \code{\link{vector}}}

\item{format}{A function used to format the numbers before the HTML for the
triangles is added.}

\item{subset}{A \code{logical} vector. Should elements of \code{x} get
coloured arrows (as opposed to the symbol for 'nochange')?}

\item{symbols}{The symbols to use for increases, decreases, and things
not chaning respectively. Must a a vector of length 3, the entries having
the names \code{"up"}, \code{"down"}, and \code{"nochange"}}

\item{colours}{As above, but for the colours of the symbols}
}
\value{
A vector of \code{\link{character}} values, containing HTML so that
  they should render with green/red triangles in an HTML document.
  values in \code{x}.
}
\description{
{
  When producing numbers in R markdown documents, it can be nice to try and
  draw readers' attention to increases and decreases. The \code{html_tri}
  function takes a numeric vector, and returns a \code{\link{character}}
  vector of HTML strings, which will render in an (R) markdown document as
  numbers accompanied with a green 'upward' triangle for positive numbers, a
  red 'downward' triangle for negative ones, and a black square for numbers
  which are exactly 0 by default. The colours can be altered by passing valid
  CSS colour values to the \code{colours} argument, and the symbols by
  passing valid HTML character values to the \code{symbols} argument. The
  default values are in HTML decimal character codes.

  If you'd only like to green/red triangles for some non-zero numbers, you
  can use the subset argument to pass a \code{\link{logical}} vector (the
  same) length as \code{x} to \code{html_tri}. This will mean that only
  elements of \code{x} will get a traingle when they are non-negative
  \emph{and} \code{subset} is \code{TRUE}.
}
}
\examples{
# This will output 'raw' HTML. To see the final result in an HTML markdown
# document, see the package vignette; vignette("brocks")

html_tri(runif(10))

# You could use other HTML symbols, even emojis if you like!
# These are HTML decimal codes (only unicode allowed in R packages), but
# you could use any valid characters (e.g. copy and paste)

html_tri(runif(10), symbols = c("up" = "&#128522;", "down" = "&#128542;",
  "nochange" = "&#128528;"))

}
\author{
Brendan Rocks \email{rocks.brendan@gmail.com}
}

