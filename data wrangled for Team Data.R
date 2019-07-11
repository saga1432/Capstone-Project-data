library(dplyr)
library(tidyr)
library(readr)
setwd("C:/Users/Henry.Nketeh/Desktop")
attendance <- read.csv("capstone_project.csv")
attendance$Teams.Operating.Income <- NULL
attendance$metro.area.population <- NULL
colnames(attendance)[colnames(attendance)=="Teams.location.median.income"] <- "1% increase of Home game attendance"
attendance$X2018.2019.season.Road.Game.Attendance <- NULL
colnames(attendance)[colnames(attendance)=="Teams.Revenue"] <- "Difference of 1% home attendance increase and home attendance"
colnames(attendance)[colnames(attendance)=="win.to.player.cost.ratio"] <- "Percantage increase"
attendance$Teams.Roster.Salary <- NULL
attendance$star.expenses <- NULL
