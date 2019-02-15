#
# NAME: Poisson.R
#
# PURPOSE: Generate a plot, and return an array of values, 
#          for a poisson experiment.
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

library("ggplot2")
######################
# Poisson Regression #
######################

data(elephant)
pe = elephant

head(pe)
plot(pe$Number_of_Matings~pe$Age_in_Years)
lm.pe = lm(pe$Number_of_Matings~pe$Age_in_Years,data = pe)
abline(lm.pe)
summary(lm.pe)
#plot(lm.pe)


glm.out=glm(pe$Number_of_Matings~pe$Age_in_Years,family = "poisson",data = pe)
summary(glm.out)


plot(pe$Number_of_Matings~pe$Age_in_Years)
abline(lm.pe)
lines(pe$Age_in_Years,glm.out$fitted.values)


h=hist(pe$Number_of_Matings,breaks = 200,probability = TRUE)
h1=h$density/20
h2 = which(!h1==0)
h3 = h1[h2]


plot(h3,type = 'l')
lines(ans$`p(x)`)

mate_norm = pe$Number_of_Matings/sum(pe$Number_of_Matings)
hea

points(seq(0,9),ans$`p(x)`,type = 'l',col='red')


attach(pe)
newdata = data.frame(
  "Age_in_Years" = 35
)

#THESE ARE JUST FITTED VALUES
#pred = predict(glm.out,type = "response")
lines(pe$Age_in_Years,pred,col=5)

####################
# Poisson Function #
####################

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


Poisson = function(lambda=lambda,x=x){
  #  SPECIAL NOTES: 
  #
  #  X should be a sequence of numbers to calculate poisson values.
  #
  #  lambda = E[X] = VAR[X]
  #
  if(missing(x)) {
    x = seq(0,100)
  } else {
    x = x
  }
  
  n = length(x) 
  y_values = NULL
  for (i in 1:n) {
    xi = x[i]    
    numerator = lambda^xi
    denominator = factorial_function(xi) * exp(lambda)
    
    y_values[i] = numerator / denominator
   
  }
  df = as.data.frame(cbind(x,round(y_values,digits = 4)))
  colnames(df) = c("x","p(x)")
  
  #plot values
  p=ggplot(data = df, aes(x=x,y=y_values)) +
    geom_line(color = "#000000") +
    geom_point(color = "#0336ad") + 
    ggtitle("Poisson Distribution") +
    xlab("x") + ylab("Prob(x)") +
    theme_bw()
  print(p)
  return(df)
}


ans = Poisson(lambda=3.5,x=seq(0,15))
ans
 
  
  
