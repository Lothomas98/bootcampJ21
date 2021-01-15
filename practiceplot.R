# Pie Chart of Mortality Outcomes
# Table 1: data characteristics of cohort 1 and 2

par(mfrow=c(1,2))  #plot in a 1x2 array

#Cohort 1
slices1 <- c(53, 450, 146)        #values from table
labels1 <- c("Deceased","Cured","Unknown")  #labels from table
pct1 <- round(slices1/sum(slices1)*100)     #percentages
labels1 <- paste(labels1,pct1)              #define chart labels
labels1 <- paste(labels1,"%", sep="")
labels1 <- paste(labels1,slices1,sep=" (")
labels1 <- paste(labels1,")", sep="")
pie(slices1,labels=labels1,col=rainbow(length(labels1)),main="Mortality Outcomes of Cohort 1")

#Cohort 2
slices2 <- c(4, 212, 29)        #values from table
labels2 <- c("Deceased","Cured","Unknown")  #labels from table
pct2 <- round(slices2/sum(slices2)*100)     #percentages
labels2 <- paste(labels2,pct2)              #define chart labels
labels2 <- paste(labels2,"%", sep="")
labels2 <- paste(labels2,slices2,sep=" (")
labels2 <- paste(labels2,")", sep="")
pie(slices2,labels=labels2,col=rainbow(length(labels2)),main="Mortality Outcomes of Cohort 1")
