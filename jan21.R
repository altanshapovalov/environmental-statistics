# ENSC110 Lecture 7 - Convergence

# calculating Pi
a <- 0
for (j in 0:10) {
  a <- a + (-1/3)^j * sqrt(12) / (2*j+1)
  print(paste('j=',j, ' a=',a))
}

# tweaking
a <- 0
for (j in 0:100) {
  a_old <- a # update a_old value
  a <- a + (-1/3)^j * sqrt(12) / (2*j+1) # update the new a value
  print(paste('j=',j, ' a=',a)) # show j and a values
  if (abs(a - a_old) < 1e-5) { # here 1e-5 is the tolerance value
    print("converged")
    break # stop loop if tolerance is reached
  }
}
# we checked that it's set to the FOURTH decimal place (even tho 1e-5)




# another classwork problem
b <- 1
for (j in 1:5) {
  b <- (1/b[j-1]) + ((b[j-1])/2)
  print(paste('j=',j, ' b=',b))
}