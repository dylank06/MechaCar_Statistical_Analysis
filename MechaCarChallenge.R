# MechaCarChallenge 

# Deliverable 1

# load dplyr package
library(dplyr)

# import and read in the MechaCar_mpg.csv file as dataframe

mechaCar <- read.csv(file = '/Users/dylankurth/Documents/R_Analysis/01_Demo/MechaCar_mpg.csv')
head(mechaCar)

# Perform linear regression using the lm() function. 
# In the lm() function, pass in all six variables (i.e., columns), 
# and add the dataframe you created in Step 4 as the data parameter.

mechaModel <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechaCar )

# Summary of regression 
summary(mechaModel)

# plot the regression 
plot(mechaModel)

# Deliverable 2

# import and read in the Suspspension_Coil.csv file as a table 

suspension_table <- read.csv(file= 'Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Create a total_summary dataframe using the summarize() function to get the
# mean, median, variance, and standard deviation of suspension coils psi column

total_summary <- summarize(suspension_table,
                                  Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =sd(PSI))

# Create a lot_summary dataframe using group_by and the summarize functions to group each manufacturing lot
# group_by object
by_lot = group_by(suspension_table, Manufacturing_Lot)

# summarize group_by 
lot_summary <- summarize(by_lot,
                           Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =sd(PSI))

# Deliverable 3

# write an RScript using the t.test() function to determine if the PSI across all 
# manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_table$PSI, mu=1500)

# write three more RScripts in your MechaCarChallenge.RScript using the t.test() 
# function and its subset() argument to determine if the PSI for each manufacturing lot is 
# statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(suspension_table, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(suspension_table, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(suspension_table, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)