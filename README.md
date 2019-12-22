# Non_Linear_Regression_Newton_Gaussian_Method

The problem at hand is to find all possible positions of a piston and crankshaft. The initial position of the crank is known, we need to
find the positions of piston, under a constrained enviornment. Aditionally the initial position of crank might have some noise as well.

this code converts the overall problem into a root finding problem, based on the relationship between crank, piston and the angles, the 
unknown metrics are calculated. To counter the noise in the initial angle measurement, a non-linear regression is fitted for the initial 
angel of crank based on time, and this is further used to calculate the unknown metrics. Newton Gassian method was used for non-linear
regression.


Thanks to Professor David Salac and Professor Gary Dargush for teaching us EAS 596 and enabling us to love Numerical Mathematics and
solve these problems.
