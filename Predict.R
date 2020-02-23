library(tidyverse)
RegressionData <- read.csv(file="RegressionData (1).csv", header=TRUE, sep=",")
#PRINTING COLNAMES
colnames(RegressionData)
#PRING HEAD OF DATAFRAME
head(RegressionData)


#BUILDING THE MULTI-REGRESSION-MODEL
Model_1 = lm(Price ~ YearBuilt +Age.at.Sale+DWT, data = RegressionData)
#EVALUATING MODEL SUMMARY
summary(Model_1)
#PRINTING JUST THE COEFFICIENTS MATRIX
summary(Model_1)$coefficient

#BET-PERFORMER CONFIGURATIONS

#CONFIG 1:DEFAULT CONFIGURATION OF BET PERFORMER 
New_data_1 = data.frame(YearBuilt = 1997 , Age.at.Sale = 11, DWT = 172 )
#CONFIG 2:BET PERFORMER CONFIGURATION : 5 YEARS YOUNGER
New_data_2 = data.frame(YearBuilt = 2002, Age.at.Sale = 6, DWT = 172 )
#CONFIG 3:BET PERFORMER WITH DWT 20% LESS
New_data_3 = data.frame(YearBuilt = 1997, Age.at.Sale = 11, DWT = 137.6 )

#PREDICTING THE OUTPUT/PRICE 

#PREDICTING FOR CONFIG 1
predict(Model_1, New_data_1)
#PREDICTING FOR CONFIG 2
predict(Model_1,New_data_2)
#PREDICTING FOR CONFIG 3
predict(Model_1,New_data_3)

