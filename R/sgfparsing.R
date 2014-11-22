# Copyright (C) 2014 Xavier Combelle
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

#' A Reference Class to represent a node of a game tree.
#'
#' @field properties Character vector.
#' @field children Character vector. Children nodes of the current node.
Node <- setRefClass(Class = "Node", fields = c("properties", "children"))

tokenize <- function(file) {
  nextChar <- ireadChar(file)
  last_char <- " "
  uppers <- LETTERS

  while (TRUE) {
    # Skip space characters
    while (last_char == " ") {
      last_char <- nextChar()
    }

    # Return property name
    if (last_char %in% uppers) {
      propery_name <- list()
      while (last_char %in% uppers) {
        property_name <- c(property_name, last_char)
        last_char <- nextChar()
      }
    }
  }
}
