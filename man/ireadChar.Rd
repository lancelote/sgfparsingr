% Generated by roxygen2 (4.0.2): do not edit by hand
\name{ireadChar}
\alias{ireadChar}
\title{Iterator over Characters of Text from a Connection}
\usage{
ireadChar(con, n = 1, ...)
}
\arguments{
\item{con}{A connection object.}

\item{n}{Integer. The number of characters to read by one step. Negative
values indicate that one should read up to the end of the connection. The
default value is 1.}

\item{...}{Passed on to the readChar function.}
}
\value{
An iterator over the characters of text from a connection.
}
\description{
Custom iterator based on \code{ireadLines} from
\code{iterators} package. It is a wrapper around the standard
\code{readChar} function.
}
\examples{
# Read characters from 'COPYING' file (30 by one step)
it <- ireadChar(con=(file.path(R.home(), 'COPYING')), n=30)
nextElem(it)
nextElem(it)
nextElem(it)
}

