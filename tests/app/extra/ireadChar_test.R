source(file = file.path("..", "..", "..", "app", "extra", "ireadChar.R"),
       chdir = T)

context("`ireadChar` function")
###############################

f <- ireadChar(con = file.path("..", "..", "test_sgf", "test.sgf"), n = 1)

test_that("`ireadChar` reads characters from a file", {
  expect_that(nextElem(f), equals("("))
  expect_that(nextElem(f), equals(";"))
  expect_that(nextElem(f), equals("G"))
  expect_that(nextElem(f), equals("M"))
  expect_that(nextElem(f), equals("["))
})