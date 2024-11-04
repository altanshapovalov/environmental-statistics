# ensc110 lecture, march 2, 2022

rm(list=ls()) # clear workplace

x <- 1:7
y <- c(6,9,7,12,11,13,15)
p <- lm(y ~ x + cos(pi*x) + 1)

plot(x,y)

xdraw <- data.frame(x = seq(0.5,7.5,0.01))
ydraw <- predict(p,xdraw)
lines(xdraw$x,ydraw)
