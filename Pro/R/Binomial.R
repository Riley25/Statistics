#
# NAME: BINOMIAL.R
#
# PURPOSE: Generate a plot, and return an array of values, 
#          for a binomial experiment.
#
# AUTHOR: R.N.H. 
#
# SPECIAL NOTES: 
#
#   PLOTTING 'TYPES':
#      "p" for points,
#      "l" for lines,
#      "b" for both,
#      "c" for the lines part alone of "b",
#      "o" for both 'overplotted',
#      "h" for 'histogram' like (or 'high-density') vertical lines,
#      "s" for stair steps,
#      "S" for other steps, see 'Details' below,
#      "n" for no plotting.
#


factorial_function = function(num){
  #PURPOSE: This function takes the n factorial for any integer > 0  (n!)
  fact = NULL
  if(num <= 1){fact = 1}
  else{for(i in 0:num-1) {
    fact[i] = (num -i)} 
    fact = prod(fact)  * num}
}
#EXAMPLE:
number = factorial_function(3)
number



BINOMIAL = function(){
  p <- as.numeric(readline(prompt = paste("What is the probability of success (p)?",":")))
  n <- as.numeric(readline(prompt = paste("How many trials (n)?",":")))
  
  factorial_function = function(num){
    fact = NULL
    if(num <= 1){fact = 1}
    else{for(i in 0:num-1) {
      fact[i] = (num -i)} 
      fact = prod(fact)  * num}
    }
  
  q=1-p
  x=seq(0,n,1)
  
  ARRAY_I = matrix(c(rep(NA,length(x))),nrow = 1)
  for(i in 1:length(x)){
    
    ARRAY_I[i] = ((factorial_function(n))/(factorial_function(x[i]) * factorial_function(n-x[i]))) * p^x[i] * (1-p)^(n-x[i])
    
  }
  colnames(ARRAY_I) = as.character(c(seq(0,length(x)-1,1)))
  rownames(ARRAY_I) = 'p(x)  '

  plot(seq(0,length(x)-1,1),ARRAY_I, type = 'b',xlab = 'Trial Number', ylab = 'p(x)',main = 'Binomial Distribution')
  return(ARRAY_I)
}


#EXAMPLE HERE
BINOMIAL()
.25
20




