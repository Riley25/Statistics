# Stats-Distribution
Functions relating to statistical distributions

Recall:

<a href="https://www.codecogs.com/eqnedit.php?latex=\frac{n!}{k!(n-k)!}&space;=&space;\binom{n}{k}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\frac{n!}{k!(n-k)!}&space;=&space;\binom{n}{k}" title="\frac{n!}{k!(n-k)!} = \binom{n}{k}" /></a>


## This is the Negative Binomial. 

Where:


<a href="https://www.codecogs.com/eqnedit.php?latex=p(x)&space;=&space;\binom{r&plus;x-1}{x}&space;p^r(1-p)^x&space;=&space;\binom{r&plus;x-1}{r-1}p^r(1-p)^x" target="_blank"><img src="https://latex.codecogs.com/gif.latex?p(x)&space;=&space;\binom{r&plus;x-1}{x}&space;p^r(1-p)^x&space;=&space;\binom{r&plus;x-1}{r-1}p^r(1-p)^x" title="p(x) = \binom{r+x-1}{x} p^r(1-p)^x = \binom{r+x-1}{r-1}p^r(1-p)^x" /></a>

+ x = Number of Failures untill the <a href="https://www.codecogs.com/eqnedit.php?latex=r^{th}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?r^{th}" title="r^{th}" /></a> success. 

+ p = probability of a succes.

+ r = number of successes 

**The geometric is a special case for the Negative Binomial w/ r = 1**

![](https://github.com/Riley25/Statistics/blob/master/Images/neg_bin.png)

*example: p = .16666 and n=10. Black line is r=1, red r = 2, green r=3, ... light blue r=6*

## This is the Binomial.

Where:

<a href="https://www.codecogs.com/eqnedit.php?latex=p(x)&space;=&space;\binom{n}{x}&space;p^x&space;(1-p)^{n-x}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?p(x)&space;=&space;\binom{n}{x}&space;p^x&space;(1-p)^{n-x}" title="p(x) = \binom{n}{x} p^x (1-p)^{n-x}" /></a>

+ p = probability of a succes.

+ n = number of trials

![](https://github.com/Riley25/Statistics/blob/master/Images/bin_dist.png)

*example: n=20, p=.16666*


## This is the Poisson.

Where: 

<a href="https://www.codecogs.com/eqnedit.php?latex=p(x)&space;=&space;\frac{e^{-\lambda}&space;\lambda^{x}}{x!}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?p(x)&space;=&space;\frac{e^{-\lambda}&space;\lambda^{x}}{x!}" title="p(x) = \frac{e^{-\lambda} \lambda^{x}}{x!}" /></a>

+ <a href="https://www.codecogs.com/eqnedit.php?latex=\lambda" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\lambda" title="\lambda" /></a> = E[X] = VAR[X]

![](https://github.com/Riley25/Statistics/blob/master/Images/Rplot_p.png)

*example: lambda = 3.5*




