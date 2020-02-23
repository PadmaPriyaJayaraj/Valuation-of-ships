library(tidyverse)
RegressionData <- read.csv(file="RegressionData.csv", header=TRUE, sep=",")
#PRINTING COLNAMES
#colnames(RegressionData)
#PRING HEAD OF DATAFRAME
#head(RegressionData)


#BUILDING THE MULTI-REGRESSION-MODEL WITH ALL VARIABLES - SALEDATE
Model_1 = lm(Price ~ YearBuilt +Age.at.Sale+DWT+Capesize, data = RegressionData)
#EVALUATING MODEL SUMMARY
summary(Model_1)
#PRINTING JUST THE COEFFICIENTS MATRIX
summary(Model_1)$coefficient

#BUILDING THE MULTI-REGRESSION-MODEL WITH ALL VARIABLES - SALEDATE,AGE.AT.SALE
#Model_2 = lm(Price ~ YearBuilt +DWT+Capesize, data = RegressionData)
#EVALUATING MODEL_2 SUMMARY
#summary(Model_2)
#PRINTING JUST THE COEFFICIENTS MATRIX_2
#summary(Model_2)$coefficient

#BUILDING THE MULTI-REGRESSION-MODEL WITH ALL VARIABLES - SALEDATE,YEARBUILT
#Model_3 = lm(Price ~ Age.at.Sale+DWT+Capesize, data = RegressionData)
#BET-PERFORMER CONFIGURATIONS
#EVALUATING MODEL SUMMARY
##summary(Model_3)
#PRINTING JUST THE COEFFICIENTS MATRIX
#summary(Model_3)$coefficient

#CONFIG 1:DEFAULT CONFIGURATION OF BET PERFORMER 
New_data_1 = data.frame(YearBuilt=1997, Age.at.Sale = 11, DWT = 172, Capesize = 12479)
#CONFIG 2:BET PERFORMER CONFIGURATION : 5 YEARS YOUNGER
#New_data_2 = data.frame(Age.at.Sale = 6, DWT = 172 , Capesize = 12479)
#CONFIG 3:BET PERFORMER WITH DWT 20k LESS
#New_data_3 = data.frame(Age.at.Sale = 11, DWT = 152, Capesize = 12479 )
#CONFIG 4:BET PERFORMER WITH Capesize 30% LESS
#New_data_4 = data.frame(Age.at.Sale = 11, DWT = 172, Capesize = (12479*70)/100 )

#PREDICTING THE OUTPUT/PRICE 

#PREDICTING FOR CONFIG 1
predict(Model_1, New_data_1)
#PREDICTING FOR CONFIG 2
#predict(Model_3,New_data_2)
#PREDICTING FOR CONFIG 3
#predict(Model_3,New_data_3)
#PREDICTING FOR CONFIG 4
#predict(Model_3,New_data_4)

