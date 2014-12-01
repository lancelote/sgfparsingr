# sgfparsingr #

sgf files parsing package, based on Xavier Combelle sgf parsing Python
[implementation](https://github.com/xcombelle/sgftool).

## Why? ##

Because we can of course. Just kidding, I need a parsing library for my 
[Go](http://en.wikipedia.org/wiki/Go_(game)) statistical R projects, so I 
decide to rewrite Xavier Combelle tool. One can probably use original Python 
implementation, but I really like "monolanguage" projects and found this way to 
be more educationally wise. 

## Contribution info ##

All contributions are welcome (if there will be any). You should be probably 
aware of R package development process (check this [guide](http://r-pkgs.had.co.nz/)) 
and Test-driven Development methods (everything must be covered by unittests).
Check [TODO](TODO.md).

## Testing ##

Use `devtools::test()` or Ctrl + Shift + T to run unittests.

### Debugging ###

To debug use `devtools::load_all()` or Ctrl + Shift + L to load all functions 
and classes.

### Documentation ###

For documentation use `roxygen2` comments, autobuild via `devtools::document()` 
or Ctrl + Shift + D in RStudio (useful [guide](http://cran.r-project.org/web/packages/roxygen2/vignettes/roxygen2.html)).
