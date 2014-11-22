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

library(iterators)

context("`ireadChar` function")
###############################

f <- ireadChar(con = file.path("test_data", "test.sgf"), n = 1)

test_that("`ireadChar` reads characters from a file", {
  expect_that(nextElem(f), equals("("))
  expect_that(nextElem(f), equals(";"))
  expect_that(nextElem(f), equals("G"))
  expect_that(nextElem(f), equals("M"))
  expect_that(nextElem(f), equals("["))
})

detach("package:iterators", unload=TRUE)
closeAllConnections()
