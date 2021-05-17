library(dplyr)
MechaCar_DF <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_DF)
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_DF))


Suspension_Coil_DF<-read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F) 
Summarize_Coil<- Suspension_Coil_DF%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
GroupBy_Coil<- Suspension_Coil_DF%>% group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')