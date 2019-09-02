immuno <- read.csv("measles_df.csv", stringsAsFactors = F, check.names = F)


immuno <- t(immuno)
colnames(immuno) <- immuno[1,]
immuno <- immuno[-1,]

str(immuno)

View(immuno)
class(immuno)

agg <- xts(immuno[])






install.packages("xts")
library(ggplot2)
library(xts)
library(reshape2)
