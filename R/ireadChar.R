# Copyright 2008-2010 Revolution Analytics
# Copyright 2014 Pavel Karateev
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#' @title Iterator over Characters of Text from a Connection
#'
#' @description Custom iterator based on `ireadLines` from `iterators` package.
#' It is a wrapper around the standard `readChar` function.
#'
#' @param con A connection object or a character string.
#' @param n Integer. The number of characters to read by one step. Negative
#' values indicate that one should read up to the end of the connection. The
#' default value is 1.
#' @param ... Passed on to the readChar function.
#' @return An iterator over the characters of text from a connection.
#' @examples
#' it <- ireadChar(file.path(R.home(), 'COPYING'))
#' nextElem(it)
#' nextElem(it)
#' nextElem(it)
ireadChar <- function(con, n=1, ...) {
  # Iterate over file character by character

  if (!is.numeric(n) || length(n) != 1 || n < 1)
    stop('n must be a numeric value >= 1')

  if (is.character(con)) {
    con <- file(con, open='r')
    doClose <- TRUE
  } else {
    doClose <- FALSE
  }

  nextEl <- function() {
    if (is.null(con))
      stop('StopIteration', call.=FALSE)

    r <- readChar(con, n=n, ...)
    if (length(r) == 0) {
      if (doClose)
        close(con)
      con <<- NULL
      stop('StopIteration', call.=FALSE)
    }
    r
  }

  it <- list(nextElem=nextEl)
  class(it) <- c('abstractiter', 'iter')
  it
}
