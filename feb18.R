# ENSC110 Lect, Feb 18, 2022

x_obs <- c(1,2,3,4,5,6,7) # mg mL^-1
y_obs <- c(6,9,7,12,11,13,15) # cm

y <- matrix(y_obs[3:4],ncol=1) # create a column vector
y
X <- cbind(c(1,1),x_obs[3:4]) # combining 2 column vector (purpose of cbind)
X

p <- solve(X,y)
p
xtilde <- 3.6
ytilde <- p[1]+p[2]*xtilde
ytilde

approx(x_obs,y_obs,xtilde) # does what we did above (easier method)
ytilde2 <- approx(x_obs,y_obs,xtilde)$y
ytilde2
