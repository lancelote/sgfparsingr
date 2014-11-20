source(file = file.path("..", "..", "app", "sgfparsing.R"), chdir = T)

context("`Node` class")
#######################

test_that("Class `Node` exists", {
  expect_that(exists("Node"), is_true())
})

test_that("Class `Node` has fields 'properties' and 'children'", {
  expect_that(c("properties", "children"), equals(names(Node$fields())))
})
