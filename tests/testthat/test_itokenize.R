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

context("`itokenize` function")
###############################

nextToken <- itokenize(file.path("test_data", "test.sgf"))

test_that("`itokenize` returns proper tokens", {
  expect_that(nextToken(), equals(c("special", "(")))
  expect_that(nextToken(), equals(c("special", ";")))
  expect_that(nextToken(), equals(c("property_name", "GM")))
  expect_that(nextToken(), equals(c("property_value", "1")))
  expect_that(nextToken(), equals(c("property_name", "FF")))
})

nextToken(abort=TRUE)

