# ENSC110 Lab 3, Feb 9, 2022

# PART 1
# Problem 1
set.seed(34) # directions of the lab

# a
A1 <- sample(1:57,1)
A1
write.table(A1,file="A1.dat",row.names=FALSE,col.names=FALSE)

# b
b <- matrix((sample(1:87,replace=TRUE,150)),nrow=150,ncol=1)
b
A2 <- b
write.table(A2,file="A2.dat",row.names=FALSE,col.names=FALSE)

# c
c <- matrix((runif(200)),nrow=1,ncol=200)
c
A3 <- c
write.table(A3,file="A3.dat",row.names=FALSE,col.names=FALSE)

# d
d <- matrix((rnorm(300,mean=0,sd=1)),nrow=30,ncol=10)
d
write.table(d,file="A4.dat",row.names=FALSE,col.names=FALSE)

# e
e <- matrix((rnorm(300,mean=30,sd=5)),nrow=30,ncol=10)
e
write.table(e,file="A5.dat",row.names=FALSE,col.names=FALSE)

# Problem 2
# a
rm(list=ls())
set.seed(16)

# b
A7 <- matrix((runif(36)),nrow=36,ncol=1)
A7
write.table(A7,file="A7.dat",row.names=FALSE,col.names=FALSE)
hist(A7)

# c
A8 <- matrix(0,nrow=1,ncol=2)
A8[1,1] <- mean(A7)
A8[1,2] <- sd(A7)
A8
write.table(A8,file="A8.dat",row.names=FALSE,col.names=FALSE)

# d
xbar <- matrix(0,nrow=300,ncol=1)
s <- matrix(0,nrow=300,ncol=1)
for (j in 1:300) {
  x <- runif(36)
  xbar[j] <- mean(x)
  s[j] <- sd(x)
}
xbar
s
write.table(xbar,file="A9.dat",row.names=FALSE,col.names=FALSE)
write.table(s,file="A10.dat",row.names=FALSE,col.names=FALSE)

# e
sesm <- sd(xbar) # standard error of sample mean
sesm
ratioo <- (A8[1,2])/sesm
ratioo
write.table(ratioo,file="A11.dat",row.names=FALSE,col.names=FALSE)


# PART 2
data <- matrix(c(890,818,811,722,719,780,915,823,993,805,756,771,781,917,904,836,866,906,902,861,913,733,712,769,602),nrow=25,ncol=1)
data
mean(data)
sd(data)
