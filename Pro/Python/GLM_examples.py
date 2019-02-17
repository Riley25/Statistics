#
# GLM_examples.py
#
#
#
#
#

from glm.glm import GLM
from glm.families import Gaussian, Bernoulli, Poisson, Exponential
import numpy as np

linear_model = GLM(family=Gaussian())
logistic_model = GLM(family=Bernoulli())
poisson_model = GLM(family=Poisson())
exponential_model = GLM(family=Exponential())

X = [5,6,8,9,10,11,12,13,14,15,22]
X = np.array(X)
Y = [0,0,0,0,0,0,0,1,1,1,1]
Y = np.array(Y)
#print(len(X),len(Y))

logistic_model.fit(X, Y)




