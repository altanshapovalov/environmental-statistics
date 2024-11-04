#  ENSC110 Lab 4 feb 16

# Problem 1 [Ecotoxicology and Hypothesis Tests]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
x <- matrix(c(890,818,811,722,719,780,915,823,993,805,756,771,781,917,904,
                 836,866,906,902,861,913,733,712,769,602),nrow=25,ncol=1)
hist(x) # look at it
# a
obs_mean <- mean(x)
write.table(obs_mean,file="A1.dat",row.names=FALSE,col.names=FALSE)

# b
xH0 <- matrix(x - obs_mean + 800,nrow=25, ncol=1) # define a new dataset that satisfies the null hypothesis
write.table(xH0,file="A2.dat",row.names=FALSE,col.names=FALSE)

# c
set.seed(20)
# (i)
important <- sample(xH0,size=25,replace=1)
A3 <- matrix(important,nrow=25,ncol=1)
write.table(A3,file="A3.dat",row.names=FALSE,col.names=FALSE)
# (ii)
xbar_H0 <- matrix(0,nrow=3000,ncol=1)
for (j in 1:3000) {
  xbs_H0 <- sample(xH0,25,replace=TRUE)
  xbar_H0[j] <- mean(xbs_H0)
}
hist(xbar_H0)
write.table(xbar_H0,file="A4.dat",row.names=FALSE,col.names=FALSE)
# (iii) type 1 error
indices <- which(xbar_H0 > obs_mean)
pvalue <- length(indices)/3000
pvalue
write.table(pvalue,file="A5.dat",row.names=FALSE,col.names=FALSE)
# (iv) type 2 error
xbar_H1 <- xbar_H0 - 800 + 828
indices_ii <- which(xbar_H1 < obs_mean)
pvalue_ii <- length(indices_ii)/3000
pvalue_ii
write.table(pvalue_ii,file="A6.dat",row.names=FALSE,col.names=FALSE)
# (v)
xbar_H0_crit <- quantile(xbar_H0,0.8)
beta <- sum(xbar_H1 < xbar_H0_crit)/3000
write.table(beta,file="A7.dat",row.names=FALSE,col.names=FALSE)



# Problem 2 [System of Linear Equations]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# a (Gaussian Elimination)
b <- matrix(c(1,-3,0),nrow=3,ncol=1) # coefficients of y
leq <- matrix(c(3,1,-1,1,-1,1,2,1,1),byrow=TRUE,nrow=3,ncol=3) # coeff of z
z <- solve(leq,b) # do the magic
write.table(z,file="A8.dat",row.names=FALSE,col.names=FALSE)

# b (i)
x <- c(3,3.5,4,4.5,5,5.5,6,6.5)
A9 <- outer(x[4:5],0:1,'^')
A9
write.table(A9,file="A9.dat",row.names=FALSE,col.names=FALSE)

#b (ii)
A10 <- outer(x,0:7,'^')
A10
write.table(A10,file="A10.dat",row.names=FALSE,col.names=FALSE)



# Problem 3 [Interpolation of Missing Data]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# a - define data arrays
x <- matrix(c(1,2,3,4,6,7,8,10,11,12),nrow = 10,ncol = 1,byrow=1) # hours
write.table(x,file="A11.dat",row.names=FALSE,col.names=FALSE)
y <- matrix(c(1.5,1.7,2.3,2.9,2.6,2.5,2.3,2,1.8,1.3),nrow = 10,ncol = 1,byrow=1) # tank level (meters)
write.table(y,file="A12.dat",row.names=FALSE,col.names=FALSE)

# b - using linear interpolation
x_draw <- seq(1,12,0.1) # data set from 1 to 10 w/ increments of 0.1
L <- approx(x,y,x_draw) $ y # perform linear interpolation
#plot(x_draw,L5,type='l',col='red')
#points(x,y,col='blue',pch=16)
L5 <- approx(x,y,5) $ y # fifth term(5 am)
L9 <- approx(x,y,9) $ y # ninth term
A13 <- matrix(0,nrow = 1,ncol = 2)
A13[1,1] <- L5 # assign into matrix
A13[1,2] <- L9
write.table(A13,file="A13.dat",row.names=FALSE,col.names=FALSE)

# c - cubic interpolation
c <- outer(x[3:6],0:3,'^')
p <- solve(c,y[3:6])
L5_c <- outer(5,0:3,'^') %*% p
write.table(L5_c,file="A14.dat",row.names=FALSE,col.names=FALSE)

# e - spline function
e <- splinefun(x,y)
y_draw2 <- e(x_draw)
lines(x_draw,y_draw2,col='magenta')
L5_s <- e(5)
L9_s <- e(9)
A16 <- matrix(0,nrow = 1,ncol = 2)
A16[1,1] <- L5_s # assign into matrix
A16[1,2] <- L9_s
write.table(A16,file="A16.dat",row.names=FALSE,col.names=FALSE)
