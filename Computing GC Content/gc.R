#Example
#Rosalind_5901
#53.5585

ComputingGCContentAnalysis <- function(cadena = NULL) {
  if (is.null(cadena)) {
    return(print("String is empty. Please add a valid string"))
  }
  cadena.vector <- strsplit(cadena, "")[[1]]
  cadena.vector <- cadena.vector[!cadena.vector %in% "\n"]
  count.gc <- length(cadena.vector[cadena.vector %in% c("C", "G")])
  percentage.symbols <- count.gc/length(cadena.vector)

  percentage.symbols <- round(percentage.symbols*100, 5)

  print(paste("the percentage of symbols in the string that are 'C' or 'G' is:",
              percentage.symbols))

  return(percentage.symbols)
}
