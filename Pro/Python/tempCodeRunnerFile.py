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


def Poission(lam,x=None):
    import math
    import matplotlib.pyplot as plt 

    # x axis values 
    if x is None:
        lam_up = lam*2
        x = list(range(0,lam_up+1))


    # corresponding y axis values (poission)
    n = len(x)
    y = [0]*n

    for i in range(0,n):
        xi=x[i]
        numerator = lam**xi 
        denominator = factorial_function(xi) * math.exp(lam)
        y[i] = numerator / denominator

    # plotting the points  
    fig, ax = plt.subplots()
    plt.plot(x, y, color='#000000', linestyle='solid', linewidth = 1, 
         marker='o', markerfacecolor='#0336ad', markersize=5)
    

    ax.set_xlabel(r'X', fontsize=15)
    ax.set_ylabel(r'P(x)', fontsize=15)
    ax.set_title('Poisson Function  (' + r'$\lambda = $' + str(lam)+')', fontsize=15)

    ax.grid(True)

    # function to show the plot 
    plt.show() 
    return(y)


a = Poission(7,range(0,30))
print(sum(a))