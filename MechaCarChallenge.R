# Importing dplyr package (tidyverse)
library(tidyverse)

# Reading in csv file
car_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

# Multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table)

# Obtaining statistical metrics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table))