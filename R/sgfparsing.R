Node <- setRefClass(Class = "Node", fields = c("properties", "children"))

tokenize <- function(file) {
  # Recive connection to sgf file

  f <- ireadChar(con = file, n = 1)
  last_char <- " "
  uppers <- LETTERS

  while (TRUE) {
    # Skip space characters
    while (last_char == " ") {
      last_char <- nextElem(f)
    }

    # Return property name
    if (last_char %in% uppers) {
      propery_name <- list()
      while (last_char %in% uppers) {
        property_name <- c(property_name, last_char)
        last_char <- nextElem(f)
      }
    }
  }
}
