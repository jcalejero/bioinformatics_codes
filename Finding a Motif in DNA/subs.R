FindingMotifDNA <- function(string = NULL, substring = NULL) {

  print(paste("Validating string", string))
  control <- c(0, 0)
  control[1] <- ValidateString(string)
  print(paste("Validating substring", substring))
  control[2] <- ValidateString(substring)

  if (min(control) == 0) {
    return(-1)
  } else {
    string.vector <- strsplit(string,"")[[1]]
    substring.vector <- strsplit(substring,"")[[1]]

    len <- length(string.vector) - length(substring.vector)

    values <- vector()

    for(i in 1:len){
      if(sum(string.vector[i:(i
        + (length(substring.vector) - 1))] == substring.vector) == length(substring.vector)) {
        values <- c(values,i)
      }
    }
    return(values)
  }

}

ValidateString <- function(cadena) {
  if (is.null(string)) {
    print("String is empty. Please add a valid string")
    return(0)
  } else {
    return(1)
  }
}
