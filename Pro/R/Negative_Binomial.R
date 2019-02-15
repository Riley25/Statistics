#
# NAME: NEGATIVE_BINOMIAL.R
#
# PURPOSE: Generate a plot, and return an array of values, 
#          for a negative binomial experiment. Neg. binomial is special case for geometric
#
# AUTHOR: 
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
  fact = NULL
  if(num <= 1){fact = 1}
  else{for(i in 0:num-1) {
    fact[i] = (num -i)} 
    fact = prod(fact)  * num}
}

NEGATIVE_BINOMIAL = function(){
  p <- as.numeric(readline(prompt = paste("What is the probability of success (p)?",":")))
  n <- as.numeric(readline(prompt = paste("How many trials (n)?",":")))
  r <- as.numeric(readline(prompt = paste("How many success (r)?",":")))
  
  factorial_function = function(num){
    fact = NULL
    if(num <= 1){fact = 1}
    else{for(i in 0:num-1) {
      fact[i] = (num -i)} 
      fact = prod(fact)  * num}
  }
  
  q=1-p
  x=seq(0,n,1)
  
  ARRAY_1 = matrix(c(rep(NA,length(x))),nrow = 1)
  for(i in 1:length(x)){
    
    #ARRAY_I[i] = ((factorial_function(n))/(factorial_function(x[i]) * factorial_function(n-x[i]))) * p^x[i] * (1-p)^(n-x[i])
    ARRAY_1[i] = ((factorial_function(r+x[i]-1))/(factorial_function(r-1) * factorial_function(r+x[i]-1-r+1))) *p^r * (1-p)^x[i] 
  }
  colnames(ARRAY_1) = as.character(c(seq(0,length(x)-1,1)))
  rownames(ARRAY_1) = 'p(x)  '
  
  plot(seq(0,length(x)-1,1),ARRAY_1, type = 'l',xlab = 'Trial Number', ylab = 'p(x)',main = 'Negative Binomial Distribution')
  return(ARRAY_1)
}

NEGATIVE_BINOMIAL()
.25
10
3
#






NEGATIVE_BINOMIAL = function(){
  p <- as.numeric(readline(prompt = paste("What is the probability of success (p)?",":")))
  n <- as.numeric(readline(prompt = paste("How many trials (n)?",":")))

  factorial_function = function(num){
    fact = NULL
    if(num <= 1){fact = 1}
    else{for(i in 0:num-1) {
      fact[i] = (num -i)} 
      fact = prod(fact)  * num}
  }
  
  r = seq(1,6,1) #this is how many different values we wish to have.
  q=1-p
  x=seq(0,n,1)
  
ARRAY_1 = matrix(c(rep(NA,length(x)*length(r))),ncol = length(x),nrow =length(r), byrow = TRUE)
#ARRAY_1 = NULL
  
for(j in 1:length(r)){
  for(i in 1:length(x)){
    
    ARRAY_1[j,i] = ((factorial_function(r[j]+x[i]-1))/(factorial_function(r[j]-1) * factorial_function(r[j]+x[i]-1-r[j]+1))) *p^r[j] * (1-p)^x[i] 

  }}

  colnames(ARRAY_1) = as.character(c(seq(0,length(x)-1,1)))
  rownames(ARRAY_1) = c(rep('p(x)  ',length(r)))
  
  color_table = c(1,2,3,4,6,5)
  
  plot(seq(0,length(x)-1,1),ARRAY_1[1,], type = 'b',xlab = 'Trial Number', ylab = 'p(x)',main = 'Negative Binomial Distribution',ylim = c(min(ARRAY_1),max(ARRAY_1)))
  for(i in 2:length(r)){
    lines(seq(0,length(x)-1,1),ARRAY_1[i,],col = color_table[i], type = 'b',xlab = 'Trial Number', ylab = 'p(x)',main = 'Negative Binomial Distribution')

  }
  return(ARRAY_1)
}

NEGATIVE_BINOMIAL()
.16666
10



