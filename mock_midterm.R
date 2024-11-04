# ENSC110 Mock Mid-term quiz 
# started jan 26 (mercredi), 2022

# 1 Inverse of Matrix - an element
A <- matrix(c(5,-2,3,7),nrow=2,ncol=2,byrow=1) # create the matrix)
A # show the matrix
A <- 6 # correct option for inverse
write.table(6,'A1.dat',row.names=F,col.names=F)

# 2 Darwin's Tribonacci sequence
T <- matrix (0,nrow=27,ncol=1) # 27 by 1 column vector
T[1] <- 0
T[2] <- 0
T[3] <- 1 # this is the 0th year
for (j in 4:27) {
  T[j] <- T[j-1] + T[j-2] + T[j-3]
}
T # show F value
write.table(T,'A2.dat',row.names=F,col.names=F)