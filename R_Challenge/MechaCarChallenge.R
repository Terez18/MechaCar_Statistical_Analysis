library(dplyr)
MechaCar_DF <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_DF)
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_DF))


Suspension_Coil_DF<-read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F) 
Summarize_Coil<- Suspension_Coil_DF%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
GroupBy_Coil<- Suspension_Coil_DF%>% group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


t.test((Suspension_Coil_DF$PSI), mu=1500 )

psi_lot1 <- Suspension_Coil_DF %>% subset(Manufacturing_Lot=='Lot1') #create a table of data points with Lot 1
t.test(psi_lot1$PSI,mu=1500) #compare Lot1 sample versus population mean

psi_lot2 <- Suspension_Coil_DF %>% subset(Manufacturing_Lot=='Lot2')  #create a table of data points with Lot 2
t.test(psi_lot2$PSI,mu=1500) #compare Lot2 sample versus population mean

psi_lot3 <- Suspension_Coil_DF %>% subset(Manufacturing_Lot=='Lot3')  #create a table of data points with Lot 3
t.test(psi_lot3$PSI,mu=1500) #compare Lot3 sample versus population mean

