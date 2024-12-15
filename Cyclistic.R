
library(tidyverse)
library("readxl")
my_data <- read_excel("Book1.xlsx") ## Read Data
my_data1 <- read_excel("Data_Homework4.xlsx")
model <- lm(SalePrice ~ LotArea + Bedrooms + OverallQual + factor(CentralAir), data = my_data)
model
summary(model)



new_data <- subset(my_data1, Zoning=='RM')
model1 <- lm(Sales ~ Income + Advertising + Population  + Price + factor(Urban), data = my_data)
model
summary(model1)


Cyclistic <- read_excel("Cyclistic’s trip data.xlsx") ## Imported The Cyclistic Data 
blank_rows <- which(apply(Cyclistic, 1, function(row) all(is.na(row)))) ## Checked for blank rows
blank_rows ## 0

