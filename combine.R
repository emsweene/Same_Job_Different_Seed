##create a vector to collect the means
means <- c()

## load in the mean from each set 
for (i in 1:100){
	load(paste0(i, 'output.Rdata'))
	means[i] <- mean.exp
}

##plot a histogram of the means
pdf('Hist.pdf')
hist(means, main = 'Histogram of Means')
dev.off()

##make a qqplot to check normality
pdf('qqplot.pdf')
qqnorm(means)
dev.off()
