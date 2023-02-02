# Deliverable 1: Multiple linear regression on variables affecting mpg

# Importing dplyr package (tidyverse)
library(tidyverse)

# Reading in csv of MechaCar specs
car_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

# Multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table)

# Obtaining statistical metrics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table))




# Deliverable 2: Generating a summary stats table to show suspension coil's PSI cont. variables across all lots & 
# the mean, median, variance, and std for each lot

# Reading in csv of suspension coil data
coil_table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

# Creating summary table for PSI column
total_summary <- coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Creating a summary table grouped by lot
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups= 'keep')




# Deliverable 3: Perform t-tests to determine if all lots and each lot are stat. different from the pop mean (1500 PSI)

# t-test to determine if PSI across all lots is stat. different from pop. mean (1500)
t.test(coil_table$PSI, mu=1500)

# Three t-tests to determine if PSI for EACH lot is stat. different from pop.mean (1500)

#Subsets of lots
Lot1 <- subset(coil_table, Manufacturing_Lot=='Lot1')
Lot2 <- subset(coil_table, Manufacturing_Lot=='Lot2')
Lot3 <- subset(coil_table, Manufacturing_Lot=='Lot3')

# t-test for Lot1
t.test(Lot1$PSI, mu=1500)

# t-test for Lot2
t.test(Lot2$PSI, mu=1500)

# t-test for Lot3
t.test(Lot3$PSI, mu=1500)



