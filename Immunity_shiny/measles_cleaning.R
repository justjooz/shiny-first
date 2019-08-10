# this R script cleans data on the ASEAN measles vaccination dataset


measles_df <- read.csv("immune_measles.csv", header = T, sep = ",", check.names = F) 
# check.names = F removes the X in front of each column that starts with a number
names(measles_df) <- gsub(pattern = "Measles", replacement = "", x = names(measles_df))
measles_df <- measles_df[,-c(2,14)] # removes redundant columns

# finds the mean of malaysia's 2004 and 2006 values to impute 2004 value
measles_df[5,3] <- (measles_df[5,2] + measles_df[5,4])/2 
View(measles_df)

rownames(measles_df) <- measles_df[,1]
measles_df <- measles_df[,-1]

write.csv(measles_df, file = "measles_df.csv")
write.csv(measles_2004, file = "measles_2004.csv")
