# ENSC110 Lab 2


# PROBLEM 1 Loops ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm(list=ls()); cat("\014"); graphics.off(); # this removes everything
A1 <- 0
for (j in 1:100) {
  A1 <- sqrt(j) + A1
}
A1 # print value
write.table(A1,file="A1.dat",row.names=FALSE,col.names=FALSE)



# PART 2 of problem 1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm(list=ls()); cat("\014"); graphics.off(); # this removes everything
A2 <-  0
for (j in 1:100) {
  if (sin(j) > 0) {
    A2 <- sqrt(j) + A2
  }
}
A2
write.table(A2,file="A2.dat",row.names=FALSE,col.names=FALSE)



# PROBLEM 2 Sequences ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm(list=ls()); cat("\014"); graphics.off(); # this removes everything
p <- matrix (0,nrow=100,ncol=1) # initialize matrix
p[1] <- 1 # set first 3 values to 1
p[2] <- 1
p[3] <- 1
for (j in 4:100) {
  p[j] <- p[j-2] + p[j-3]
}
p # show p
A3 <- p # save p value into A3
write.table(A3,file="A3.dat",row.names=FALSE,col.names=FALSE)



# Part 2 of problem 2 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
q <- matrix (0,nrow=99,ncol=1) # initialize matrix
for (j in 1:99) {
  q[j] <- (p[j+1])/(p[j])
}
q
A4 <- q
write.table(A4,file="A4.dat",row.names=FALSE,col.names=FALSE)



# PROBLEM 3 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
n_iter <- matrix(0,nrow=1,ncol=2)
x <- 1
for (j in 2:100) {
  x_old <- x
  x <- (x_old+2) / (x_old+1) # formula given
  print(paste('j=',j, ' x=',x)) # show j and a values
  if (abs(x - x_old) < 1e-7) { # here 1e-7 is the tolerance value
    n_iter[1,1] <- j # save the iteration number into n_iter
    print("converged")
    break # stop loop if tolerance is reached
  }
}
n_iter[1,2] <- x # sqrt(2)
n_iter
A5 <- n_iter
write.table(A5,file="A5.dat",row.names=FALSE,col.names=FALSE)



# PROBLEM 4 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
z = c( 104, 80, 105, 75, 97, 93, 87, 96, 102, 105,
             109, 88, 98, 106, 79, 103, 99, 102, 92, 94,
             93, 103, 102, 103, 101, 107, 106, 67, 68, 105) # dataset
A6 <- sum(z) # sum of all values
A6 # show value
A7 <- mean(z) # mean of values
A7
A8 <- var(z) # unbiased terminator
A8
n <- length(z) # get how many data points in x
A9 <- var(z)*((n-1)/n) # biased terminator
A9
A10 <- sqrt(var(z)/n) # unbiased variance of standard error of sample mean
A10
write.table(A6,file="A6.dat",row.names=FALSE,col.names=FALSE)
write.table(A7,file="A7.dat",row.names=FALSE,col.names=FALSE)
write.table(A8,file="A8.dat",row.names=FALSE,col.names=FALSE)
write.table(A9,file="A9.dat",row.names=FALSE,col.names=FALSE)
write.table(A10,file="A10.dat",row.names=FALSE,col.names=FALSE)



# PROBLEM 5 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
A11 <- matrix(0,nrow=2,ncol=1) # column vector
A <- c(11,7,9,20,25,10,13,5)
CN <- c(78,89,75,83,80,94,93,86)
CNN <- sum(A*CN)/sum(A)
A11[1,1] <- CNN
CN_alt <- CN - CNN # minus the weighted mean
Varr <- sum((CN_alt^2)*A)/sum(A)
A11[2,1] <- sqrt(Varr)
A11
write.table(A11,file="A11.dat",row.names=FALSE,col.names=FALSE)