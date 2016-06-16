InsertionSortValue <- function(A = c(6, 10, 4, 5, 1, 2)) {
  swaps.steps <- matrix(data = A, ncol = length(A))
  for (i in 2:(length(A))) {
    j <- i
    while (j > 1 && (A[j] < A[j-1])) {
      aux <- A[j]
      A[j] <- A[j - 1]
      A[j - 1] <- aux
      j <- j - 1
      swaps.steps <- rbind(swaps.steps, as.vector(A))
    }
  }

  print(paste("Steps:", nrow(swaps.steps) - 1))
  return(swaps.steps)
}
