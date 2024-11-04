# ensc110 lecture, feb 14

#H0 null hypothesis
mu <- 191 # our mean in lbs
sigma <- 25.6 # also lbs

population <- rnorm(0.13e6,mean=mu,sd=sigma) # og is 130e6

xbar_H0 <- matrix(0,nrow=3000,ncol=1)
for (j in 1:3000) {
  xbar[j] <- mean(sample(population,100)) # draw 100 from population
}

hist(xbar_H0)
indices <- which(xbar_H0 > 194.9)
m <- length(indices)
pvalue <- m/3000
pvalue

xbar_H1 <- xbar_H0 - 191 + 197.1
indices <- which(xbar_H1 < 194.1)
m <- length(indices)



h0 <- 