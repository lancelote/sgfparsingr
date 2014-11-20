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
