hpcallday<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
hpc2day<-hpcallday[hpcallday$Date %in% c("1/2/2007","2/2/2007"),]
windows()
with(hpc2day, plot(strptime(hpc2day$DateTime, format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character(Global_active_power)),xlab="",ylab="Global Active Power (kilowatts)",type="l",lwd=2))
dev.copy(png,file="plot2.png")
dev.off()