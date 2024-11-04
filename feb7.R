# ENSC110 Lecture, Feb 7

sample (1:57,1) # gives 1 random number btwn 1 and 57

#default for rnorm is std of 1 and mean of 0
rnorm(1) # draw a number from a normal distribution randomly
rnorm(3) # generate 3 numbers

#set specific std and mu
rnorm(10,mean=11,sd=0.5)

#anything btwn 0 and 1 ONLY
runif(5) # generate 5 numbers