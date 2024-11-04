# ensc110 Lab 5, march 2, 2022

# PROBLEM 1
x <- c(0,2,4,6,8,10) 
y <- c(0.6,1.5,-4.6,-3.2,-5.1,-3.8)

# a) fit line y=p1+p2x to data
# (i) ~~~~~~~~~~~~~~~~~
X <- cbind(1,x) # matrix of the model predictors
# X <- outer(x,0:1,'^') # works equally as well
write.table(X,file="A1.dat",row.names=FALSE,col.names=FALSE)
# (ii) ~~~~~~~~~~~~~~~~~
p <- solve( t(X) %*% X, t(X) %*% y)
write.table(p,file="A2.dat",row.names=FALSE,col.names=FALSE)
# (iii) ~~~~~~~~~~~~~~~
x_tilde <- 3
y_tilde <- c(1,x_tilde) %*% p
write.table(y_tilde,file="A3.dat",row.names=FALSE,col.names=FALSE)

# b) fit parabolic curve (y=p1+p2x+p3x^2) to the data 
# (i)
#Xb <- cbind(1,x)
#Xb <- cbind(Xb,x^2)
Xb <- cbind(1,x,x^2)
write.table(Xb,file="A4.dat",row.names=FALSE,col.names=FALSE)
# (ii)
pb <- lm(y ~ 1 + I(x) + I(x^2))
coef(pb)
A5 <- matrix(coef(pb))
write.table(A5,file="A5.dat",row.names=FALSE,col.names=FALSE)
# (iii)
x_tb <- data.frame(x = 3)
y_tb <- predict(pb,x_tb)
write.table(y_tb,file="A6.dat",row.names=FALSE,col.names=FALSE)



# PROBLEM 2
x2 <- c(0.5,1,1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8,8.5,9,9.5,10)
y2 <- c(-0.950,  1.233,  0.706,  2.896,  1.949, 
       2.420,  2.872,  2.785,  2.256,  2.456, 
       2.537,  3.973,  3.518,  3.003,  4.127, 
       3.707,  3.968,  3.644,  4.431,  4.436)
# a
X2 <- cbind(1,log(x2))
write.table(X2,file="A7.dat",row.names=FALSE,col.names=FALSE)
# b (finding the fitting parameters)
model2 <- lm(y2 ~ 1 + log(x2))
p2 <- coef(model2)
write.table(p2,file="A8.dat",row.names=FALSE,col.names=FALSE)

# c
p2c <- confint(model2)[2,] # p1 95% confidence level
A9 <- matrix(c(confint(model2)[2,]),nrow=1,ncol=2) # in a matrix as 1x2
write.table(A9,file="A9.dat",row.names=FALSE,col.names=FALSE)

# d
y2_fit <- predict(model2,data.frame(x2=13))
write.table(y2_fit,file="A10.dat",row.names=FALSE,col.names=FALSE)










