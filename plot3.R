#setwd("/home/jhernan/Desktop/tanya/exploratory_data_analysis/ExData_Plotting1")
table <- read.csv("household_power_consumption.txt", header=TRUE,sep=";", colClasses=c("character","character","numeric", "numeric", "numeric","numeric", "numeric", "numeric", "numeric"), na.string="?")
DateTime<-paste(table$Date, table$Time)
table$DateTime<-strptime(DateTime,"%d/%m/%Y %H:%M:%S")

filter=subset(table, Date=="1/2/2007"|Date=="2/2/2007")

png(filename="plot3.png",width=480,height=480)
with(filter, plot(x=DateTime, y=Sub_metering_1, type="l",xlab="",ylab="Energy sub metering"))
with(filter, lines(x=DateTime, y=Sub_metering_2,col="red"))
with(filter, lines(x=DateTime, y=Sub_metering_3,col="blue"))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1,1))
dev.off()
