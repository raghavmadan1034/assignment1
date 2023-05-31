tennis <- function(p) {
  x <- 0
  while (x < 5) {
    x <- x + 1
    if (runif(1) < p) {
      return(x)
    }
  }
  
  return(x) 
}


