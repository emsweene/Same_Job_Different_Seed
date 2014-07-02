##set working directory to location of the output of random_exponential.R

setwd()

##create a vector to collect the means

mean <- c()

## load in the mean from each set
for (i in 1:100){
load(paste0(i, 'output.Rdata'))
mean[i] <- mean.exp
}

##plot a histogram of the means
pdf('Hist.pdf')
hist(means, main = 'Histogram of Means')
dev.off()