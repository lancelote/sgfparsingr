# Copyright (C) 2014 Pavel Karateev
#
# This file is part of sgfparsingr
#
# sgfparsingr is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#' @title Iterator over file characters
#'
#' @description Simple iterator wrapper around the standard \code{readChar}
#' function.
#'
#' @param path A path to a file.
#' @return An iterator over the file characters.
ireadChar(path) %as%
{
  con <- file(path, open='r')
  char <- ""
  function(abort=FALSE) {

    # Stop iterator
    if (abort) {
      close(con)
      return(invisible())
    }

    char <<- readChar(con, n=1)
    return(char)
  }
}
