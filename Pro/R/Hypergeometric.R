#
# NAME: Hypergeometric.R
#
# PURPOSE: Generate a plot, and return an array of values, 
#          for a Hypergeometric dist.
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
#factorial_function(3) * 2

N_X = function(n,x){
  #purpose: This is the combination function which is without replacement and without regard to order.
  #          formula below.
  # (n) = n!
  # (x)   x!(n-x)!
  diff = n - x
  numerator = factorial_function(n) 
  denominator = factorial_function(x) * factorial_function(diff)
  answer = numerator / denominator
  return(answer)
}
N_X(3,2)


Hyper_func = function(type_1_object,type_2_object,n){
  #purpose: This is the hypergeometric function.
  #          formula below.
  #
  #   K = Type I object drawn
  # M-K = Type II object drawn
  #   M = Type I + Type II (total number of in survery)
  
  K = type_1_object
  M = K + type_2_object
  M_K = type_2_object
  
  x=seq(0,n,1)
  
  ARRAY_I = matrix(c(rep(NA,length(x)+1)),nrow = 1)
  for(i in 0:length(x)){
    
    numerator = N_X(K,i) * N_X(M_K,n-i)
    denominator = N_X(M,n)
    ARRAY_I[1,i+1] = (numerator/denominator)
    
  }
  colnames(ARRAY_I) = as.character(c(seq(0,length(x),1)))
  rownames(ARRAY_I) = 'p(x)  '
  
  plot(seq(0,length(x),1),ARRAY_I, type = 'b',xlab = 'X = Type I object', ylab = 'p(x)',main = 'Hypergeometric Distribution')
  #sentance = print(paste(c("The probability of x = ",min(x)," is  ",round(ARRAY_I[1,1]),ndigits=5),collapse = ''))
  
  E = n*K/M; E = round(E,digits = 2)
  var = (n*K*(M_K)*(M-n))/(M^2*(M-1)) ; var = round(var,digits = 2)
  statement1 = print(paste(c("The expected value is... ",E),collapse = ''))
  statement2 = print(paste(c("The variance is... ",var),collapse = ''))
  
  #print(statement1)
  #print(statement2)
  return(ARRAY_I)
  
}

Hyper_func(12,12,52)


