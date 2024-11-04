# ensc110 lect, feb 28

rm(list=ls())

x <- 1:7 # number of values in the dataset
y <- c(6,9,7,12,11,13,15) # dataset

bigX <- cbind(1,x) # non-square matrix

p <- solve(t(bigX) %*% bigX) %*% t(bigX) %*% y # solve is for inverse, t is transpose

plot(x,y) # plot the data points

xdraw <- seq(1,7,0.1)
ydraw <- outer(xdraw,0:1,'^') %*% p
lines(xdraw,ydraw) # add the line

xtilde <- 3.6 # what we want to know
ytilde <- outer(xtilde,0:1,'^') %*% p

ytilde
points(xtilde,ytilde,col='red')

# linear modeling (lm) [EASIER ALTERNATIVE]
pp <- lm(y ~ 1 + x)
# coef(pp)
xtilde1 <- data.frame(x=3.6)
ytilde1 <- predict(pp,xtilde1)
ytilde1