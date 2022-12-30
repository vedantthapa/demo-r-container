double_number <- function(x) {
  #' Double a number
  #'
  #' Given an input column, the function will double its value
  #'
  #' @param x numeric input column
  x+x
}

fix_missing <- function(x) {
  #' Replace NA
  #' 
  #' Given an input column, the function will replace its null values with FALSE
  #' 
  #' @param x the input column
  x[is.na(x)] <- FALSE
  x
}