library(jsonlite)
library(tidyverse)
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Deliverable 1. Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_table))

#Deliverable 2. Create Visualizations for the Trip Analysis
Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Coil_table %>%  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create stastics
lot_summary <- Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create stastics

#Deliverable3
#t-test of all the lots
t.test(log10(Coil_table$PSI),mu=1500) #compare sample versus population means

#t-test of Lot1
Lot1 <- subset (Coil_table, Manufacturing_Lot=="Lot1")
t.test(log10(Lot1$PSI),mu=1500)

#t-test of Lot2
Lot2 <- subset (Coil_table, Manufacturing_Lot=="Lot2")
t.test(log10(Lot2$PSI),mu=1500)

#t-test of Lot3
Lot3 <- subset (Coil_table, Manufacturing_Lot=="Lot3")
t.test(log10(Lot3$PSI),mu=1500)

