# ENSC110 Lect; jan 24

# figuring out variance

# mean
x <- c(1,3,3,6,7,7,7,7,9,9) # have a data set w/ 10 numbers
mu <- 0 # this will be my mean
n <- length(x) # get how many data points in x
for (j in 1:n) {
  mu <- mu + x[j]
}
mu <- mu/n # get the actual mean value
mu # show mean

# alternatively...
mean(x)
# or...
sum(x)/n

# calculating the variance
vari <- 0
for (j in 1:n) {
  vari <- vari + (x[j]-mu)^2
}
vari <- vari/n
vari

# or...
mean((x-mu)^2)

# unbiased estimator
var(x)

# biased estimator
var(x)*(n-1)/n


# something else
x <- c(1,3,6,7,9) # dataset
f <- c(1,2,1,4,2) # frequency
mu <- sum(x*f)/sum(f) #element-wise multiplication
mu # weighted average
# now, to variance
vari <- sum(f*(x-mu)^2)/sum(f) # variance (biased)
vari
