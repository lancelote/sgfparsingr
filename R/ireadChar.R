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

# Custom iterator based on `ireadLines` from `iterators` package
# To work `ireadChar` needs loaded `iterators` package

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
