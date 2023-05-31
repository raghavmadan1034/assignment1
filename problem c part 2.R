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
matches <- numeric(1000)  
for (i in 1:1000) {
  matches[i] <- tennis(0.70)  
}

ans <- mean(matches)  

print(ans)  