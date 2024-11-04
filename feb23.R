# ensc110 lect, feb 23, 2022

#Vandermonde matrices
x_obs <- 1:7 # number of values/data points
y_obs <- c(6,9,7,12,11,13,15) # data points

X <- outer(x_obs,0:6,'^')
p <- solve(X,y_obs)
x_tilde <- 3.6
y_tilde <- outer(x_tilde,0:6,'^') %*% p
y_tilde

# visualize how lagrange interpolation has been done:
x_draw <- seq(1,7,0.1) # data set from 1 to 7 w/ increments of 0.1
y_draw <- outer(x_draw,0:6,'^') %*% p
plot(x_draw,y_draw,type='l',col='red') # lagrange interpolation
points(x_obs,y_obs,col='blue',pch=16)

y_draw1 <- approx(x_obs,y_obs,x_draw) $ y # linear interpolation
lines(x_draw,y_draw1,col='green')
# problem w/ lin interp is that we can't take the first derivative of it

# spline
f <- splinefun(x_obs,y_obs)
y_draw2 <- f(x_draw)
lines(x_draw,y_draw2,col='magenta')
