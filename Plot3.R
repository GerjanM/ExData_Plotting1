#download and read file
library(readr)
fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
setwd("D:/Users/Gerjan/R/EDA/EDA-datasets")
download.file(fileurl,"epc.zip")
epcdf<-read_delim("epc.zip",delim=";")
setwd("D:/Users/Gerjan/R/EDA/EDA-wk1")

#subsetting
epcdf2<-subset(epcdf,epcdf$Date=="1/2/2007"|epcdf$Date=="2/2/2007")

#plot3
x<-strptime(paste(epcdf2$Date,epcdf2$Time),"%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png",width = 480, height = 480)
plot(x,epcdf2$Sub_metering_1,type="l",xlab="",ylab="energy sub metering")
points(x,epcdf2$Sub_metering_2,col="red",type="l")
points(x,epcdf2$Sub_metering_3,col="blue",type="l")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c("black","red","blue"),cex=0.8)
dev.off()