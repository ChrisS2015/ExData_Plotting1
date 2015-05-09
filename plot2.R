library(lubridate)
epc <- read.delim("household_power_consumption.txt",sep=";",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")
epc2 <- epc[which(epc$Date == "1/2/2007" | epc$Date == "2/2/2007"),]
epc2[,"Timestamp"] <- dmy_hms(paste(epc2[,1],epc2[,2]))
png("plot2.png")
plot(epc2$Timestamp,epc2$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()
