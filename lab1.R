#################################################################
# UCR ENSC 110
# Student name: Maxim Shapovalov
# Lab #: 1

rm(list = ls()); graphics.off(); cat("\014"); # clear the workspace

# We are given the following matrices:
B <- matrix(c(1,-7,-2,5),nrow=2,byrow=1)
C <- matrix(c(0,-4,4,0),nrow=2,byrow=1)
D <- matrix(c(1,-7,3,2,0,-5),nrow=2,ncol=3,byrow=1)
E <- matrix(c(-3,0,0,4,1,0),nrow=3,ncol=2,byrow=1)
x <- matrix(c(1,0),nrow=2,ncol=1,byrow=1)
y <- matrix(c(0,-1),nrow=2,ncol=1,byrow=1)
z <- matrix(c(-1,-2,3),nrow=3,ncol=1,byrow=1)

# a) calculate A1 = B-C
A1 <- B-C
write.table(A1,file="A1.dat",row.names=FALSE,col.names=FALSE)

# b) A2 = (B^t)*x
A2 <- t(B) %*% x
write.table(A2,file="A2.dat",row.names=FALSE,col.names=FALSE)

# c) A3 = Dz or D*z
A3 <- D %*% z
write.table(A3,file="A3.dat",row.names=FALSE,col.names=FALSE)

# d) A4 = 2x+3y
A4 <- (2*x) + (3*y)
write.table(A4,file="A4.dat",row.names=FALSE,col.names=FALSE)

# e) A5 = DE
A5 <- D %*% E
write.table(A5,file="A5.dat",row.names=FALSE,col.names=FALSE)

# f) A6 = B+(E^t)*(D^t)
A6 <- B + (t(E)) %*% (t(D))
write.table(A6,file="A6.dat",row.names=FALSE,col.names=FALSE)

# DEFINE THE FOLLOWING:
# g) A7 = 1st column of D
A7 <- D[ ,1]
write.table(A7,file="A7.dat",row.names=FALSE,col.names=FALSE)

# h) A8 = The first column of the second row of E
A8 <- E[2,1]
write.table(A8,file="A8.dat",row.names=FALSE,col.names=FALSE)

# i) A9 = The last two rows of the first column of E as a row vector
A9 <- matrix(c(E[(2:3),1]),nrow=1)
write.table(A9,file="A9.dat",row.names=FALSE,col.names=FALSE)

# j) A10 = A 2×3 matrix containing the squares of the elements of D.
A10 <- D^2
write.table(A10,file="A10.dat",row.names=FALSE,col.names=FALSE)

# k) A11 = A 3×2 matrix containing elementwise multiplication products of DT and E.
A11 <- (t(D)) * E
write.table(A11,file="A11.dat",row.names=FALSE,col.names=FALSE)

# l) A12 = The determinant of B.
A12 <- det(B)
write.table(A12,file="A12.dat",row.names=FALSE,col.names=FALSE)

# m) A13 = The inverse of B. 
A13 <- solve(B)
write.table(A13,file="A13.dat",row.names=FALSE,col.names=FALSE)

# Finita la comedia