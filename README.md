# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle length and ground clearence because they are smaller than .05
![statistica annalysis](/images/summary_multilinear.png)

- Is the slope of the linear model considered to be zero? Why or why not?

No, the slopes are provided by :
```
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_table)
   
   ```
   
 ![coeficients](/images/coefficients_multilinear.png)
 
 - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
 
 This model is a good one to represent the current data, beacuse it has a R2 of 71%, but it is not the best option to predict, bacause just 2 variables are signifficant (Vehicle length and ground clearence) and the interception is signifficant too. There must be other variables that contribute to predict mpg
 
## Summary Statistics on Suspension Coils

Total mean and SD are not very small, the cause of the above is because lot 3 has a big variance that doesn´t meet the specification of 100.

![Total mean](/images/Total_mean.png)                     ![Lot mean](/images/lot_mean.png)

## T-Tests on Suspension Coils

After aplying the t-test to the 3 lots together and to each one separetely, we conclude that there are not statistical difference betwen any of them and the population media

![t-test](/images/Lot_t-test.png)  

## Study Design: MechaCar vs Competition

1. We believe that our customers are very interested in the attention that they received in the sales process. We are going to ask our customers their satisfaction in the sales process and we are going to campare it with the satisfaction of competitors customers. We are aplying a 5-scale question (5 is very satisfied and 1 is very unsatisfied). To achieve this obective we are going to use the chi-squared test.
2. Ho = There is no significative difference in both groups when they answer the 5-scale question (betwen our customers and competitor customers)
   Ha = There is significative difference in both groups when they answer the 5-scale question (betwen our customers and competitor customers)
3. As I mentioned previosley, I will use the Chi-squared test because we are measuring the frequency that each number in the 5-scale question is answered.
4. For the above, we need to apply a questonnaire to a representative sample from our clients population and our competitor population and then apply the chi-squared test 

