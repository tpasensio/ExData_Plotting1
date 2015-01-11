#setwd("/home/jhernan/Desktop/tanya/exploratory_data_analysis/ExData_Plotting1")
table <- read.csv("household_power_consumption.txt", header=TRUE,sep=";", colClasses=c("character","character","numeric", "numeric", "numeric","numeric", "numeric", "numeric", "numeric"), na.string="?")
DateTime<-paste(table$Date, table$Time)
table$DateTime<-strptime(DateTime,"%d/%m/%Y %H:%M:%S")

filter=subset(table, Date=="1/2/2007"|Date=="2/2/2007")

png(filename="plot1.png",width=480,height=480)
hist(filter$Global_active_power,col="red",breaks=12, ,main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()