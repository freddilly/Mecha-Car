#Multiple Linear Regression Analysis
#Read the CSV file containing the dataset
mpg_dataset_challenge <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
vehicle_length = mpg_dataset_challenge$"vehicle length"
#perform the multiple linear regression analysis
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_dataset_challenge)
#Find the summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_dataset_challenge))

#Summary Statistics
#Read the CSV file 
coil_dataset <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
#Find the summary statistics
summary(coil_dataset$PSI)
#Find the standard deviation
sd(coil_dataset$PSI)
#Find the variance
var(coil_dataset$PSI)

coil_PSI = coil_dataset$PSI
summary(coil_PSI)

# T-Test
t.test(coil_PSI,mu=1500,alternative="two.sided")