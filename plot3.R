hpcallday<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
hpc2day<-hpcallday[hpcallday$Date %in% c("1/2/2007","2/2/2007"),]
windows()

with(hpc2day, plot(strptime(hpc2day$DateTime, format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character(Sub_metering_1)),xlab="",ylab="Energy sub metering",lwd=1,type="n"))
with(hpc2day, lines(strptime(hpc2day$DateTime, format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character(Sub_metering_1))))
with(hpc2day, lines(strptime(hpc2day$DateTime, format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character(Sub_metering_2)),col="red"))
with(hpc2day, lines(strptime(hpc2day$DateTime, format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,file="plot3.png")
dev.off()