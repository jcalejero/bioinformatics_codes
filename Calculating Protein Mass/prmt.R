CalculatingProteinMass <- function(protein = NULL, mass_table = NULL) {
  if (is.null(mass_table)) {
    print("mass table is empty. Please add a valid mass table dataframe")
    return(0)
  }

  if (is.null(protein)) {
    print("Protein is empty. Please add a valid string")
    return(0)
  }

  string.vector <- strsplit(protein,"")[[1]]
  weight <- 0
  for (i in 1:length(string.vector)) {
    weight <- weight + mass_table$valor[mass_table$letra == string.vector[i]]
  }

  print(paste("The total weight of Protein", protein, "is", weight))
  return(weight)
}
