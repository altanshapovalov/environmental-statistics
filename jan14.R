# ENSC110 lecture 5, January 14 (fri), 2022

# continuing work w/ graphs ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
par(mfrow=c(2,1)) # makes subplots (2 rows, 1 column)
# this is for fitting several

x1 <- seq(-10,10,0.1)
y1 <- sin(x1)
plot(x1,y1,
     xlab = "soil thickness (mm)",
     ylab = "temperature (C)",
     type = "l",
     ylim=c(-5,3), # to fit the second plot
     col = "red")

x2 <- c(-5,-sqrt(3),pi)
y2 <- x2*sin(x2)
# plot(x2,y2) # this will overwrite the previous plot, so, use:
points(x2,y2) # necessary to plot over a previous plot

legend(0,-2,legend=c('Site A','Site B'),
       col = c('red','black'),
       lty = c(1,NA), # line style command
       pch = c(NA,1)) # specifies the shape of marker



# Getting data from Excel ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
# install.packages("readxl")
# library(readxl) # call in the library to execute some functions
# data <- read_excel( # here, put in the directory w/ file: '/Users/')
    # also specify sheet = 'MLO1',
    # range = 'A35:F2067')
# data$'CO2'



# Loop work ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm(list=ls()); cat("\014"); graphics.off(); # this removes everything; cat clears console
  # graphics off removes figures
a <- 0
for (j in 1:1000) { # open the for loop
  a <- a + j
} # close the for loop
a # check answer
  