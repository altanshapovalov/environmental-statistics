# ENSC110 Lecture, Feb 9

# create a population that corresponds to what CDC thought
pop <- rnorm(130e6,mean=191,sd=25.6) # 130 million ppl, sd=spread in lbs

xbar <- matrix(3000,ncol=1) # column vector w/ 3000 slots
for (j in 1:3000) {
  x <- sample(pop,100) # draw 100
  xbar[j] <- mean(x)
}
xbar
mean(xbar)

hist(xbar) # histogram
indices <- which(xbar > 194.9) # which values are greater than 194.9
indices
m <- length(indices) # how many values are greater than 194.9
m
m/3000 # probability of the alternative hypothesis being valid