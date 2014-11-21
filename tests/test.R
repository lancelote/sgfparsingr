# Copyright (C) 2014 Pavel Karateev
#
# This file is part of sgfparsingr
#
# sgfparsingR is free software: you can redistribute it and/or modify
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


suppressPackageStartupMessages(library(methods))
library(testthat)

cat("\nUnit tests\n")
cat("##########\n\n")
test_file(file.path("test", "app", "sgfparsing_test.R"))
test_file(file.path("test", "app", "extra", "ireadChar_test.R"))
