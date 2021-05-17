library(dplyr)
MechaCar_DF <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_DF)
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_DF))


Suspension_Coil_DF<-read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F) 
Summarize_Coil<- Suspension_Coil_DF%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
GroupBy_Coil<- Suspension_Coil_DF%>% group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


t.test((Suspension_Coil_DF$PSI), mu=1500 )

psi_lot1 <- Suspension_Coil_DF %>% subset(Manufacturing_Lot=='Lot1') #create a table of data points with Lot 1
t.test(psi_lot1$PSI,mu=mean(Suspension_Coil_DF$PSI)) #compare Lot1 sample versus population mean

psi_lot2 <- Suspension_Coil_DF %>% subset(Manufacturing_Lot=='Lot2')  #create a table of data points with Lot 2
t.test(psi_lot2$PSI,mu=mean(Suspension_Coil_DF$PSI)) #compare Lot2 sample versus population mean

psi_lot3 <- Suspension_Coil_DF %>% subset(Manufacturing_Lot=='Lot3')  #create a table of data points with Lot 3
t.test(psi_lot3$PSI,mu=mean(Suspension_Coil_DF$PSI)) #compare Lot3 sample versus population mean




t.test(x=Suspension_Coil_DF$PSI, mu=1500) # t test n all cars' PSI with a mean of 1500
pop1 <- subset(Suspension_Coil_DF, Manufacturing_Lot=='Lot1') # Create subset for lot 1 cars
t.test(x=pop1$PSI, mu=1500) # t test on lot 1 cars' PSI with a mean of 1500
pop2 <- subset(Suspension_Coil_DF, Manufacturing_Lot=='Lot2') # Create subset for lot 2 cars
t.test(x=pop2$PSI, mu=1500) # t test on lot 2 cars' PSI with a mean of 1500
pop3 <- subset(Suspension_Coil_DF, Manufacturing_Lot=='Lot3') # Create subset for lot 3 cars
t.test(x=pop3$PSI, mu=1500) # t test on lot 3 cars' PSI with a mean of 1500
# Comparing MechaCar to the Competition