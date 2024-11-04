# ENSC110 Midterm
# Feb 2, 2022
# Maxim Shapovalov

# 1
write.table(4,'A1.dat',row.names=F,col.names=F)

# 2
write.table(7,'A2.dat',row.names=F,col.names=F)

# 3
write.table(1,'A3.dat',row.names=F,col.names=F)

# 4
write.table(3,'A4.dat',row.names=F,col.names=F)

# 5
B <- matrix(c(1,-3,6,7,0,5,2,-9,4,0,1,0,-1,-2,3,8),nrow=4,ncol=4,byrow=1)
B # show B
write.table(B,'A5.dat',row.names=F,col.names=F)

# 6
A6 <- matrix(c(B[1,3],B[2,2],B[4,3]),nrow=3,ncol=1,byrow=1)
A6
write.table(A6,'A6.dat',row.names=F,col.names=F)

# 7
x1 <- seq(-10,10,0.1)
y1 <- sin(x1)
plot(x1,y1,
     type = "l",
     lty = 2,
     col = "magenta")
write.table(7,'A7.dat',row.names=F,col.names=F)

# 8-10
x <- matrix(0,nrow=300,ncol=1)
x[1] <- 1
for (j in 2:300) {
  x[j] <- (2+(0.098*x[j-1]))/((x[j-1])+0.098)
  if (abs(x[j] - x[j-1]) < 1e-6) { # set tolerance
    print("reached")
    break # break sequence if tolerance is reached
  }
}
x
write.table(5,'A8.dat',row.names=F,col.names=F)
# after term 101, matrix becomes 0, thus, reached tolerance at 101
write.table(4,'A9.dat',row.names=F,col.names=F)
write.table(x,'A10.dat',row.names=F,col.names=F)

# 11
Dur <- matrix(c(1,1,2,2,2)) # duration (hours)
Con <- matrix(c(10,400,200,100,50)) # concentration (ppm)
mu <- (sum(Dur*Con)) / sum(Dur) # weighted mean
mu
write.table(mu,'A11.dat',row.names=F,col.names=F)

# 12
legume <- Con - mu # minus the weighted mean
var2 <- (sum((legume^2)*Dur))/(sum(Dur))
bsd <- sqrt(var2)
bsd
write.table(bsd,'A12.dat',row.names=F,col.names=F)

# 13
n <- 16
unb_var <- 4
b_var <- 4*(n-1)/n
b_var
write.table(b_var,'A13.dat',row.names=F,col.names=F)

# 14
write.table(6,'A14.dat',row.names=F,col.names=F)

# 15
write.table(8,'A15.dat',row.names=F,col.names=F)
