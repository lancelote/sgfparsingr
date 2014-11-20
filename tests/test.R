suppressPackageStartupMessages(library(methods)) 
library(testthat)

cat("\nUnit tests\n")
cat("##########\n\n")
test_file(file.path("test", "app", "sgfparsing_test.R"))
test_file(file.path("test", "app", "extra", "ireadChar_test.R"))