# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

TODO : and write a short summary using a screenshot of the output from the linear regression, and address the following questions:

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    - The vehical weight had a non-random level of significance because it had a P-Value of 0.07756

- Is the slope of the linear model considered to be zero? Why or why not?

    - The slope of the linear regression model is not zero becasue of the strength of the coraltion of the independent and dependent variables. Because the stength R-squared has a strong strength of coralation it the relationship between the points can not be explained by random chance or error. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    
    - The linear model predicts mpg of MechaCar prototypes effectively becasue the R-squared value of 0.7149, and the p-value of 5.35e-11 can not be explained by randomness or errors. Using this linear regression model would be effective in predicting future data points. 

## Summary Statistics on Suspension Coils

TODO: and write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    - The variance for suspension coils for all the lots is 62.29356. The curent manufacturing data meets the design specification for variance of the suspension coils not exceeding 100 pounds per square inch for the total. Using the group_by function to test if every lot had a variance that met the design specification shows that Lot 1 and Lot 2 had excepable variance. While Lot 3 does not meet design specifications since its variance is over 100 with 170.29. 
