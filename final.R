# ensc110 lab final


# 1
write.table(4,'A1.dat',row.names=F,col.names=F)


# 2
write.table(6,'A2.dat',row.names=F,col.names=F)


# 3
set.seed(11)
A3 <- matrix(runif(1000),nrow=1000,ncol=1,byrow=1)
A3
write.table(A3,'A3.dat',row.names=F,col.names=F)


# 4
aa <- matrix(c(1.3,0.6,4.7,1.5,3.1,5.2),nrow=3,byrow=1)
bb <- matrix(c(3.3,13.5,-0.1),ncol=1)
aa
bb
A4 <- qr.solve(aa,bb)
write.table(A4,'A4.dat',row.names=F,col.names=F)


# 5
rm(list=ls()) # clear previous set.seed
### a
x <- c(129,122, 97, 82,116,105,112,127,109,134,
       98, 55, 94,103, 95, 91,111, 73,112, 89,
       116, 98,109,112,139,101,114)
xbar_obs <- mean(x)
xbar_obs
write.table(xbar_obs,'A5.dat',row.names=F,col.names=F)

### b
xH0 <- (x - xbar_obs) + 115
xH0 <- matrix(xH0,nrow=27,ncol=1,byrow=1)
write.table(xH0,'A6.dat',row.names=F,col.names=F)

### c
set.seed(15)
bs1 <- sample(xH0,size=27,replace=1)
bs11 <- matrix(bs1,nrow=27,ncol=1)
A7 <- mean(bs11)
write.table(A7,'A7.dat',row.names=F,col.names=F)

### d
bs5000 <- matrix(0,nrow=5000,ncol=1)
for (j in 1:5000) {
  xbs <- sample(xH0,27,replace=TRUE)
  bs5000[j] <- mean(xbs)
}
write.table(bs5000,'A8.dat',row.names=F,col.names=F) 

### e
indices <- which(bs5000 < xbar_obs)
pvalue <- length(indices)/5000
write.table(pvalue,'A9.dat',row.names=F,col.names=F) 


# 6
rm(list=ls()) # clear previous set.seed
### i
x <- c(2,8,15,22,27,35,45,55,65) # soil depth in cm
y <- c(159,82,46,30,26,25,17,18,15) # lead content in mg/kg
L5 <- approx(x,y,5) $ y
L11 <- approx(x,y,11) $ y
L18 <- approx(x,y,18) $ y
LLL <- matrix(0,nrow=3,ncol=1)
LLL[1,1] <- L5
LLL[2,1] <- L11
LLL[3,1] <- L18
write.table(LLL,'A10.dat',row.names=F,col.names=F) 

### ii
## a ##
X <- cbind(1,exp(-x/8)) # matrix of the model predictors
write.table(X,'A11.dat',row.names=F,col.names=F) 
## b ##
p <- qr.solve(X,y)
write.table(p,'A12.dat',row.names=F,col.names=F) 
## c ##
model <- lm(y ~ 1 + exp(-x/8))
A13 <- matrix(c(confint(model)[2,]),nrow=1,ncol=2) # in a matrix as 1x2
A13
write.table(A13,'A13.dat',row.names=F,col.names=F) 
## d ##
d5 <- predict(model, data.frame(x=5))
d11 <- predict(model,data.frame(x=11))
d18 <- predict(model,data.frame(x=18))
ddd <- matrix(c(d5,d11,d18),nrow=3,ncol=1)
write.table(ddd,'A14.dat',row.names=F,col.names=F) 
## e ##
e1 <- predict(model,data.frame(x=1))
write.table(e1,'A15.dat',row.names=F,col.names=F) 
## f ## 
f1 <- predict(model,data.frame(x=0)) # lead @ surface level
f2 <- f1/2 # half of lead at surface
p_vals <- matrix(p,nrow=1,ncol=2) # assign p values into matrix
f_depth <- 8 * log((p_vals[1,2])/(f2-p_vals[1,1]))
write.table(f_depth,'A16.dat',row.names=F,col.names=F) 