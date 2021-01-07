# loading data 
Data <- read.csv("datasets/Eucalyptus1.csv")
#structure of data
str(Data)

# to see First 6 lone of data
head(Data)

# summary of data
summary(Data)

# finding mean
mean(Data$hgt)

#standard deviation
sd(Data$hgt)

# median
median(Data$hgt)

# creating sample and finding mean for each sample
sample1 = sample(Data$hgt, size = 5, replace = FALSE)
mean(sample1)