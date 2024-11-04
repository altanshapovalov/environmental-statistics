# ENSC110 lecture Feb 4, 2022
# PROBABILITY

sample(c(1,2),1) # in c(), dataset, the 1 after says "show 1 value, any"

rm(list=ls())
set.seed(17) # causes to get the same figure no matter what
ntrials <- 10000 # total attempts or trials
nH <- 0 # number of heads
p <- matrix(0,nrow=ntrials,ncol=1)
for (j in 1:ntrials) {
  if (sample(c(1,2),1) == 1) {
    nH <- nH + 1
  }
  p[j] <- nH/j
}
pH <- nH/ntrials # probability of getting heads

plot(p,type='l',log="x")