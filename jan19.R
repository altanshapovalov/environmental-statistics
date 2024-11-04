# ENSC110 Lecture, January 19, 2022

# Loop work continued
a <- 0
for (j in seq(1,5,2)) {
  print(paste('j=',j))
  print(paste('a=',a))
  a <- a+j
}
a
# seq(1,5,2) from 1 to 5 w/ step 2
# alternatively, use c(1,3,5)



# Logic Block: if block
# when to do what
a <- 12
if (a == 0) {
  print('ajourdhui est tres beau')
} else if (a == 12) {
  print ('tous les jours sont beaux')
} else {
  "maintenant je veux manger"
}


# more ifs
a <- 0
for (j in 1:10) {
  if (j<4) {
    a <- a + j
  }
  print(paste('j=',j,' a=',a))
}
a


# break: use this to stop for loop command at specified point
a <- 0
for (j in 1:10) {
  if (j == 7) {break}
  a <- a+1
}
a # breaks before 7 is included

# alternatively
a <- 0
for (j in 1:10) {
  a <- a+1
  if (j == 7) {break}
}
a # now it includes 7, and then breaks



# Fibonacci Sequence loop
F <- matrix (0,nrow=20,ncol=1)
F[1] <- 1
F[2] <- 1
for (j in 3:20) {
  F[j] <- F[j-1] + F[j-2]
}
F # show F value