#download and read file
library(readr)
fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
setwd("D:/Users/Gerjan/R/EDA/EDA-datasets")
download.file(fileurl,"epc.zip")
epcdf<-read_delim("epc.zip",delim=";")
setwd("D:/Users/Gerjan/R/EDA/EDA-wk1")


epcdf2<-subset(epcdf,epcdf$Date=="1/2/2007"|epcdf$Date=="2/2/2007")
##zo kan het ook: epcdf2<-epcdf[epcdf[1]=="1/2/2007"|epcdf[1]=="2/2/2007"]


#plot1
png(filename = "plot1.png",width = 480, height = 480)
with(epcdf2,hist(Global_active_power,main = "Global Active Power",col="red",xlab="Global Active Power(kilowatts)"))
dev.off()