# MechaCar_Statistical_Analysis

## Summary

- Utilized statistics and hypothesis testing to analyze a series of datasets from the automotive industry. Analysis includes visualizations, statistical tests, and interpretations of the results. The statistical analysis and visualizations are written in the R programming language. The Projectt demonstrates knowlege of the ETL process to visualize the data and analyze the data using R

## Overview of Analysis

### Linear Reegression to Predict MPG

- The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Used knowledge of R, to design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

### Create Visualizations for the Trip Analysis

- The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Created a summary statistics table to show:
    - The suspension coil’s PSI continuous variable across all manufacturing lots
    - The following PSI metrics for each lot: mean, median, variance, and standard deviation.
 
### T-Tests on Suspension Coils 

- Used R to perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.
 
## Results 

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    - The vehical weight had a non-random level of significance because it had a P-Value of 0.07756

- Is the slope of the linear model considered to be zero? Why or why not?

    - The slope of the linear regression model is not zero becasue of the strength of the coraltion of the independent and dependent variables. Because the stength R-squared has a strong strength of coralation it the relationship between the points can not be explained by random chance or error. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    
    - The linear model predicts mpg of MechaCar prototypes effectively becasue the R-squared value of 0.7149, and the p-value of 5.35e-11 can not be explained by randomness or errors. Using this linear regression model would be effective in predicting future data points. 
    
    ![Screen Shot 2021-01-27 at 9 03 15 PM](https://user-images.githubusercontent.com/16258584/106178543-84a31600-615f-11eb-8c23-7475090deff4.png)


## Summary Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    - The variance for suspension coils for all the lots is 62.29356. The curent manufacturing data meets the design specification for variance of the suspension coils not exceeding 100 pounds per square inch for the total. Using the group_by function to test if every lot had a variance that met the design specification shows that Lot 1 and Lot 2 had excepable variance. While Lot 3 does not meet design specifications since its variance is over 100 with 170.29. 

Grouped by Total: 

![Screen Shot 2021-01-28 at 11 45 55 AM](https://user-images.githubusercontent.com/16258584/106179109-32aec000-6160-11eb-9c7e-139fee20ca34.png)

Grouped by Manufacturing_Lot:

![Screen Shot 2021-01-28 at 11 45 45 AM](https://user-images.githubusercontent.com/16258584/106178926-f4b19c00-615f-11eb-8103-fcd5b5941219.png)

## T-Tests on Suspension Coils 

- Summary: Looking at the P-Values from the T-Tests there was little to no signifigance from most of the test. The most signifigant sample was from lot 3 with a P-Value of .04. This measure shows that there is normal significant difference between the means of the two groups.

- T-Tests results 

![Screen Shot 2021-01-28 at 12 58 27 PM](https://user-images.githubusercontent.com/16258584/106185967-398e0080-6169-11eb-9a8b-5c29c3b367c6.png)
![Screen Shot 2021-01-28 at 12 58 38 PM](https://user-images.githubusercontent.com/16258584/106185978-3d218780-6169-11eb-8817-6b9cf3dacfcb.png)
![Screen Shot 2021-01-28 at 12 58 51 PM](https://user-images.githubusercontent.com/16258584/106185982-3eeb4b00-6169-11eb-8381-1b56f5328aba.png)
![Screen Shot 2021-01-28 at 12 57 54 PM](https://user-images.githubusercontent.com/16258584/106185992-401c7800-6169-11eb-8504-d1a96af1753d.png)

# Study Desin: MechaCar vs Competition 

Is the average MechaCar MPG different from the competition 

H0: There is no difference between MechaCar's MPG vs the competition 
Ha: There is a difference between MechaCar's MPG vs the competition 

Test: T-Test, comparing the average if the P_Value is less than the alpha then we can reject the null hypthesis and state that the observed difference is statistically significant.
