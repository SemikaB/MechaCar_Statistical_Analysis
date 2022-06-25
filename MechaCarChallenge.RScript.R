###  Deliverable 1

# Use the library() function to load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
library(tidyverse)

# Read in the csv file.
mecha_data <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

# Perform a linear regression module lm() function
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_data)

# Determine the p-value and r-squared of the linear regression module.
summary(mecha_lm)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg)) 

#Additional Step: eliminate the independent variables that have little impact on predicting mpg to see impact:
lm(mpg ~ vehicle_length + ground_clearance, data=mechaCar_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=mechaCar_mpg)) 


### Deliverable 2


# Read in the csv file
suspension_data <- read.csv("Suspension_Coil.csv",stringsAsFactors = F, check.names = F)

# Create the Total Summary
total_summary <- suspension_data %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


# Create the Summary By Lot
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')


### Deliverable 3

# Peform t-test across all Lots
t.test(suspension_data$PSI,mu = 1500)

# Peform t-test on Lot 1
t.test(subset(suspension_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Peform t-test on Lot 2
t.test(subset(suspension_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Peform t-test on Lot 3
t.test(subset(suspension_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

