temp <- commandArgs(TRUE)
seed <- temp[1]

##set the seed 
set.seed(temp[1])

##generate 100 exponential random variables with rate = 1
random.exp <- rexp(100, rate = 1)

##take the mean of the random variables
mean.exp <- mean(random.exp)

##save the mean 
save(mean.exp, file = paste0(seed, 'output.Rdata'))

