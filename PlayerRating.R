#Loading packages
library(dplyr)
library(tidyr)
#Opening file directory
setwd("C:/Users/Henry.Nketeh/Desktop")
#Opening specific file
refine_original <- read.csv("PlayerRating.csv")
#Renaming file variable to be more project-oriented 
PlayerR <- refine_original 
#Renaming data frame variable names top be easier to delete
colnames(PlayerR)[colnames(PlayerR)=="X4545"] <- "MPG"
colnames(PlayerR)[colnames(PlayerR)=="X"] <- "FGA"
colnames(PlayerR)[colnames(PlayerR)=="X.1"] <- "FGM"
colnames(PlayerR)[colnames(PlayerR)=="X1"] <- "Number"
#Removing columns from the dataframe 
PlayerR$MPG <- NULL
PlayerR$FGA <- NULL
PlayerR$FGM <- NULL
write.csv(PlayerR, "CleanPLAYERR.csv")
