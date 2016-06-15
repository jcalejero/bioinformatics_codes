FibonacciNumbersCalculator <- function(n = NULL) {

  if (is.null(n)) {
    return(print("Please, introduce a positive value"))
  } else {
    values <- numeric(n)
    values[1] <- 1
    values[2] <- 1

    for (i in 3:n) {
      values[i] <- values[i - 1] + values[i - 2]
    }

    print(paste("Last Fibonacci Number:", max(values)))
    return(values)
  }

}
