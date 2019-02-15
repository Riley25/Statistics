#
# PRO NAME: Poission.py
#
# PURPOSE: Build function for generating poission distribution
#
# DATE: 2/15/2019
#
# AUTHOR: R.N.H.
#


def factorial_function(number):
    #
    # NOTES: This will produce n!
    #
    #        Where n! = n * (n-1) * (n-2) * (n-3) * .... * 1 
    #
    number = int(number)

    if number == 0:
        return(1)
    if number < 0:
        print("Number must be non-negative")
        return(None)
    if number > 0: 
        product_number = 0
        for i in range(1,number+1):
            if i ==1:
                product_number = i
            else:
                product_number = product_number * i 
            
        return(product_number)

# Test the function
#a=factorial_function(9)
#print(a)



def Binomial(p,n):
    import math
    import matplotlib.pyplot as plt 

    #n_up = (p*n)*2
    #n = list(range(0,round(n_up)+1))
    x = range(0,n+1)

    # corresponding y axis values (poission)
    l = len(x)
    y = [0]*l

    for i in range(0,l):
        #ni=n[i]
        #numerator = p**ni 
        #denominator = factorial_function(ni) * math.exp(p)
        #y[i] = numerator / denominator
        y[i] = ((factorial_function(n))/(factorial_function(x[i]) * factorial_function(n-x[i]))) * p**x[i] * (1-p)**(n-x[i])


    # plotting the points  
    fig, ax = plt.subplots()
    plt.plot(x, y, color='#000000', linestyle='solid', linewidth = 1, 
         marker='o', markerfacecolor='#0336ad', markersize=5)
    

    ax.set_xlabel(r'X', fontsize=15)
    ax.set_ylabel(r'P(x)', fontsize=15)
    ax.set_title('Binomial  (' + r'p = ' + str(p)+', E[X] =' + str(round(n*p,ndigits=2)) +")", fontsize=15)

    ax.grid(True)

    # function to show the plot 
    plt.show() 
    return(y)


a = Binomial(.60,15)
print(a)