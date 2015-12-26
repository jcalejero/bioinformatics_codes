TanslateRNAIntoProteinFunction <- function(x){
  dictionary <- read.csv("bioinformatics_codes/Translating RNA into Protein/dict.csv", stringsAsFactors=FALSE)
  data <- data.frame(RNA=NULL, Protein=NULL)
  aux <- data.frame(RNA="None", Protein="None")
  seq <- data.frame(inicio=1, fin=3)

  for(i in 1:(nchar(x)/3)){
    aux$RNA <- as.character(substring(x, seq$inicio[1], seq$fin[1]))
    aux$Protein <- as.character(dictionary$Protein[dictionary$RNA == aux$RNA])
    data <- rbind(data, aux)
    seq$inicio[1] <- seq$inicio[1] + 3
    seq$fin[1] <- seq$fin[1] + 3
  }
  
  filename = paste("bioinformatics_codes/Translating RNA into Protein/output.protein.csv", sep="")
  write.csv(data, file=filename, row.names=FALSE)

  return(cat(data$Protein[1:(nrow(data)-1)], sep=""))
}

ObtainProteinFromRNA <- function(RNA.code){
   x <- as.character(RNA.code$V1)
   print("Ready to transform sequence")
   data.returned <- TanslateRNAIntoProteinFunction(x)
   print("Protein obtained successfully // path: bioinformatics_codes/Translating RNA into Protein/output.protein.csv")
   return(data.returned)
}
