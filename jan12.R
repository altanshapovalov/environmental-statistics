# jan 12, lecture for ensc110, practice w/ matrices
# by Maxim Shapovalov

# PART 1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
A <- matrix(c(1,3,2,5,6,7,8,3,1),nrow=3,ncol=3,byrow=1) # create the matrix

A # show the matrix

A[2,3] # show the element in 2nd row and 3rd column

A[ ,2] # show the 2nd column entirely

x <- matrix(c(1,-7,4),nrow=1) # create row vector
x <- matrix(c(1,-7,4),ncol=1) # create column vector
x # show x
dim(x) # show dimensions of x



# PART 2 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
B <- matrix(c(0,-3,2,7,-9,10,2,-3,5),nrow=3,ncol=3,byrow=1) # create B matrix
B # print B

A+B # addition of matrices
2*A # scalar multiplication
2+A # in linear algebra this is not allowed, but in R this is possible

A*B # in MATLAB, this is matrix multiplication, but in R it is not.
#cont: it multiplied it element wise, not by matrices

A %*% B # THIS is legit matrix multiplication

t(A) # transpose a matrix

diag(3) # creates 3x3 identity matrix
diag(c(3,0,-2)) # diagonal matrix w/ specific values

det(A) # determinant of A

solve(A) # gives inverse of A

A1 <- solve(A) # assign inverse of A to variable A1
write.table(A1,"A1.dat",col.names=FALSE,row.names=FALSE) # .dat is just a text file
# setting col.names as FALSE is necessary to let scorelater check our hw answers



# PART 3 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
myfun <- function(x) {    # assign function to variable "myfun"
  y <- x^3 + sin(x)  # have function in variable "y"
  return(y)  # specify that we want y to be returned/calculated/shown
}     # close the function w/ the curly bracket

myfun(1) # gives values for x=1
myfun(2) # x=2
myfun(3) # x=3

# if saving the function as "myfun.R", can do this:
source("myfun.R") 
myfun(1) # gives values for x=1
myfun(2) # x=2
myfun(3) # x=3
# Not sure why but i got an error with this

t <- seq(-10,10,0.1)
u <- sin(t)
plot(t,u,xlab = "soil thickness (mm)",
     ylab = "temperature (C)",
     type = "l",
     col = "red")
# type="l" means line plot
# col="red" control color of plot
