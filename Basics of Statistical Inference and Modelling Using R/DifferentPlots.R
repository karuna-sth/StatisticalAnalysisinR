dframe <- read.csv("datasets/nests.txt")
x <- "height of nest"

# HISTOGRAM
library(ggplot2)
ggplot(data=dframe, aes(x=x)) +
  geom_histogram(breaks=seq(8,48,5),fill='plum')+
  theme(text=element_text(size=15))+
  xlim(c(0,50))+
  xlab('Height (m)')

#Density PLOT
ggplot(data=dframe, aes(x=x)) +
  geom_density(fill='darkgreen',adjust=2)+
  theme(text=element_text(size=15))+
  xlim(c(0,50))+
  xlab('Height (m)')

# Q-Q Plot and q-q Line
x <- rnorm(1000)
hist(x, col="red")
qqnorm(x)
qqline(x,col="red")

x <- c(rnorm(10),100)
hist(x, col="blue")
qqnorm(x)
qqline(x, col="green")

x <- rpois(100,20)
hist(x, col="yellow")
qqnorm(x)
qqline(x, col="blue")

x <- rbinom(100, 10, .7)
hist(x)
qqnorm(x)
qqline(x, col="yellow")

x <- dframe$x
hist(x)
qqnorm(x)
qqline(x, col="red")
