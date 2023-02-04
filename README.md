# MechaCar_Statistical_Analysis


## Overview

Analysis was done on production data for AutosRUs' prototype car - MechaCar. First, multiple linear regression was performed to determine if certain variables of the dataset predicted mpg of MechaCar. Then, summary statistics on PSI of suspension coils were collected on the total dataset and then broken down by individual lot to verify variance is within a certain limit. Next t-tests were run to determine if the total dataset and individual lots were statistically different from a mean population value.


## Linear Regression to Predict MPG

![lin regression](https://github.com/Aleahkita/MechaCar_Statistical_Analysis/blob/main/Images/Mult_LR_Outputs.png)

Assessing the p-values from the summary output, vehicle_length and ground_clearance provided a non-random amount of variance on mpg; meaning that they have a significant impact. The other variables (vehicle_weight, spoiler_angle, AWD) did not have significant p-values, indicating a random amount of variance. The intercept is significant, meaning there are other variables and factors that contribute to the variation in mpg that have not been included in the model. 
The p-value of the model (5.35e-11) is much smaller than the 0.05 significance level. This means that the slope of the model is not considered to be zero. 
The linear model does not predict the mpg of MechaCar prototypes effectively. The linear model has an r-squared value of 0.7149, and because this is a statistical measure of how well the regression line approximates the actual data it can be said that the model performs inadequately- approximately 71% of predictions being determined. 


## Summary Statistics on Suspension Coils

Total summary statistics for all lots:

![total summary](https://github.com/Aleahkita/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary_table.png)

Individual summary statistics for each lot:
![lot summary](https://github.com/Aleahkita/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary_table.png)

The design specifications for MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Looking at the total summary statistics there is a variance of 62.29356 which is within the 100 PSI limit. The current manufacturing data meets this design specification for all lots in total. When digging deeper into each lot's statistics, Lot 1 and Lot 2 have a variance of 0.9795918 and 7.4693878 respectively which meet the specification. However, Lot 3 has a variance of 170.2861224 which exceeds the 100 PSI variance specification.


## T-Tests on Suspension Coils

![t-test (all)](https://github.com/Aleahkita/MechaCar_Statistical_Analysis/blob/main/Images/PSI(all_lots)_vs_popMean.png)

When analyzing the results of the t-test on the total dataset, all lots, there is a p-value of 0.06028 which is above our assumed significance level of 0.05. This means that the mean is statistically similar to the population mean of 1500. 

![t-test (lot1)](https://github.com/Aleahkita/MechaCar_Statistical_Analysis/blob/main/Images/Lot1_t-test.png)

The t-test conducted on Lot 1 produced a p-value of 1 which means that there is no statistical difference between the mean of Lot 1 and the population mean. This is validated due to the fact that the test indicated a true sample mean of 1500. 

![t-test (lot2)](https://github.com/Aleahkita/MechaCar_Statistical_Analysis/blob/main/Images/Lot2_t-test.png)

The t-test conducted on Lot 2 produced a p-value of 0.6072, so similarly to Lot 1 there is no statistical difference between the mean of this lot and the population mean. This is above our assumed significance level of 0.05. 

![t-test (lot3)](https://github.com/Aleahkita/MechaCar_Statistical_Analysis/blob/main/Images/Lot3_t-test.png)

The t-test conducted on Lot 3 produced a p-value of 0.04168 which is lower than our assumed 0.05 significance level. This indicates that the mean of Lot 3 and our population mean are statistically different. 

From the tests and statistics generated it can be seen that the overall scores are within range and specification. However when diving deeper into individual lots, Lot 3's production needs to be checked as it produced statistically different measures in variance of suspension coils PSI specification and mean PSI when compared to the population mean. 


## Study Design: MechaCar vs Competition

The cost of a car is an important factor of interest to consumers, especially when choosing which car manufacturer/model to invest in for themselves. To address this, a two-sample t-test can be used to compare the average cost of MechaCar with that of a competitior. 
The metric that will be tested is total cost (final sales price) of MechaCar and the total cost of another manufacturer.

- Null hypothesis: The average cost of MechaCar is the same as that of its competitor.
- Alternative hypothesis: The average cost of MechaCar is NOT the same as that of its competitor. 

A two-sample t-test will be used to test the hypothesis because it will compare both sample means and look for significance/difference between them. Based on the result, the consumer will have information on average cost and will be able to make an informed decision on their purchase. The data needed to run the statistical test would be a dataset of final sales prices for the MechaCar and its competitor. Variance in price could be due to upgrades or model specification differences. 
