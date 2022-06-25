# MechaCar_Statistical_Analysis
### Deliverable #1
### Overview 

The purpose of this analysis is to offer insights on the MechaCar's production to assist the manufacturing team. In order to conduct this analysis, two datsets are being used containing information related to the miles per gallon and the suspension coils of the MechaCar. The programming language being used is R and its dplyr library to complete this analysis.

### Linear Regression to Predict MPG
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

In this module there were two variables which provided a non-random amount of variance: The vehicle length and the ground_clearance. Both of these have small p-value hence they had a high level of significance. It also should be noted that the intercept as had a high level of significance meaning that there are still other factors contributing to the variance of the miles per gallon of the MechaCar.
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

### Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is not considered to be zero. This is because the linear regression shows that some of the independent variables had a significant effect on the dependent variable. If none of the independent variables had an effect on the dependent variable then the linear regression would result in a near zero slope.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The main indicator of whether the linear model predicts the mpg of the MechaCar is the r-squared value. In this case, it is at 0.7149 mean that out of 100 instances, this model would approximately predict the mpg of the MechaCar correctly 71 times. This means that the model would be considered effective.


![IMG_8350 (2)](https://user-images.githubusercontent.com/100738128/175784838-a6e1e437-f155-4c17-9fd7-629cc0282971.jpg)


# Suspension Coils
### Deliverable 2
### Overview

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Lot 1 and Lot 2 are both within design specifications and have hnearly the same exact mean and median. Lot 3 shows the most variance and exceeds the manufacturers specs.

#### Total Summary Table
<img width="362" alt="mean" src="https://user-images.githubusercontent.com/100738128/175786259-82ee1e67-0aff-49e6-8979-67bf037a1cb7.png">

#### Lot Summary Table
<img width="529" alt="lots sum" src="https://user-images.githubusercontent.com/100738128/175786261-60c0d0ed-3e28-4e7e-a107-df6f5d7267bd.png">

Looking at the total summary, the current variance is approximately 76.23 PSI meaning that is does meet the design specification. When looking at the lots individuals, the first two lotas meet the design specification at a varaince of approximately 1.14 PSI and 10.13 PSI respectfully, but the third lot does not. This is becasue the third lot's variance is approximately 220.01 PSI, exceeding the design specification by more than double the alotted amount. Therefore, the manufacturing team should work with the cars in lots 1 and 2 compared to those in lot 3.


### T-Tests on Suspension Coils

This section determines weather all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. In order to do this, I used R's t.test() function to find four different p-values. The question that I wanted to answer by doing this was:

### Do any of the four groups have a statistically different mean from the population mena of 1,500 PSI?
With the use of a significance level of 95%, meaning that 95% of the time this tests results would be true, I tested to see if any of the four groups had a statistical difference from the mean of 1,500 PSI. After running the tests, all four p-values where much greater than .05 which indicates that it would fail to reject and there is a statistical difference between the four groups and the population mean.


Lot 1 and Lot 3 the PSI values are not different from the population mean. However lot 2 the p-value is .347 which means there is evidence that the suspension coil is different from the population mean. All t-tests can be seen below:


![IMG_8352](https://user-images.githubusercontent.com/100738128/175786122-9a0ec66d-6a5f-4077-8b8b-7a308f409ed4.jpg)
![IMG_8356](https://user-images.githubusercontent.com/100738128/175786125-0d1bc7fa-f2f9-44fc-a5f9-5d619d6b7e02.jpg)
![IMG_8355](https://user-images.githubusercontent.com/100738128/175786085-04e82b50-756f-4991-9846-0a1e2c09635a.jpg)
![IMG_8353](https://user-images.githubusercontent.com/100738128/175786116-42867a70-2f2e-4d3a-8761-d36b676f4b89.jpg)

### Deliverable 4

The metrics i would like to test are city and highway fuel efficiencies.

Null Hypothesis is that all of the cars in the same class have the same fuel efficienies. THe Alternative Hypothesis is that they are not all the same.

I would use an ANOVA test to complete this analysis for both types of fuel efficiencies. Also I would use the ggplot2 library to show the potential spread between different cars using a boxplot.

I would need fuel efficiency data from 50 individual cars to create a sample size of data for each car in the class type. For example, if there was 10 cars in the class type, I would have a top of 500 data points collected for each fuel efficiency type.



