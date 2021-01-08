dataset <- read.csv("datasets/Eucalyptus1.csv")
sample_means <- numeric(1000)
sample_medians <- numeric(1000)
sample_sd <- numeric(1000)

# Generate 1000 samples of size n=5 to produce a sampling distribution for the 
#------------ FOR SAMPLE SIZE N = 5 ------------#
# sample mean x

for(i in 1:1000){
sample1 <- sample(dataset$hgt, size = 5, replace = FALSE)
  sample_means[i] <- mean(sample1)  
}
hist(sample_means, col = c("blue3", "blue1"))

#Sample median

for (i in 1:1000){
  sample1 <- sample(dataset$hgt, size = 5, replace = FALSE)
  sample_medians[i] <- median(sample1)
}
hist(sample_medians)

# sample standard deviation

for (i in 1:1000){
  sample1<- sample(dataset$hgt, size = 5, replace = FALSE)
  sample_sd[i] <- sd(sample1)
}
hist(sample_sd)

#------------ FOR SAMPLE SIZE N = 20 ------------#
for(i in 1:1000){
  sample1 <- sample(dataset$hgt, size = 20, replace = FALSE)
  sample_means[i] <- mean(sample1)  
}
hist(sample_means)

#Sample median

for (i in 1:1000){
  sample1 <- sample(dataset$hgt, size = 20, replace = FALSE)
  sample_medians[i] <- median(sample1)
}
hist(sample_medians)

# sample standard deviation

for (i in 1:1000){
  sample1<- sample(dataset$hgt, size = 20, replace = FALSE)
  sample_sd[i] <- sd(sample1)
}
hist(sample_sd)

#----------FOR TREE TALLER THAN 15M------------#
tree_tall_15 <- dataset[dataset$hgt > 15,]
tree_tall_15
for (i in 1:1000){
  sample1 = sample(tree_tall_15$hgt, size = 5, replace = FALSE)
  sample_means[i] <- mean(sample1)
}
hist(sample_means)

# median
for (i in 1:1000){
  sample1 = sample(tree_tall_15$hgt, size = 5, replace = FALSE)
  sample_medians[i] <- median(sample1)
}
hist(sample_medians)

# standard deviation 
for (i in 1:1000){
  sample1 = sample(tree_tall_15$hgt, size = 5, replace = FALSE)
  sample_sd[i] <- sd(sample1)
}
hist(sample_sd)
