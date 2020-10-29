bubblesort <- function(x) {
  for (j in (length(x)-1):1) {
    for (i in j:(length(x)-1)) {
      if (x[i] > x[i+1]) {
        temp <- x[i]
        x[i] <- x[i+1]
        x[i+1] <- temp
      }
    }
  }
  return(x)
}

x <- c(20,31,8,46,19)

print(x)
print(bubblesort(x))
