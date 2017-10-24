#download and read file
library(readr)
fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
setwd("D:/Users/Gerjan/R/EDA/EDA-datasets")
download.file(fileurl,"epc.zip")
epcdf<-read_delim("epc.zip",delim=";")
setwd("D:/Users/Gerjan/R/EDA/EDA-wk1")

#subsetting
epcdf2<-subset(epcdf,epcdf$Date=="1/2/2007"|epcdf$Date=="2/2/2007")

#plot2
x<-strptime(paste(epcdf2$Date,epcdf2$Time),"%d/%m/%Y %H:%M:%S")
y<-epcdf2$Global_active_power

png(filename = "plot2.png",width = 480, height = 480)
plot(x,y,type="l",xlab="",ylab ="Global Active Power (kilowatts")
dev.off()