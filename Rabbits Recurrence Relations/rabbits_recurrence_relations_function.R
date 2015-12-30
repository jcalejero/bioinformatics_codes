##################################################################
################ http://rosalind.info/problems/fib ###############
### as.character(RabbitsRecurrenceRelationsFunction(n=32,k=5)) ###
##################################################################

RabbitsRecurrenceRelationsFunction<-function(young=1,old=1,n=10,k=1) {
  result <- vector()
  result[1] <- young
  result[2] <- old
  for(i in 3:n) {
    result[i]<-result[i-1]+k*result[i-2]
  }
  return(result[i])
}


