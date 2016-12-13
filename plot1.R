hpcallday<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
hpc2day<-hpcallday[hpcallday$Date %in% c("1/2/2007","2/2/2007"),]
windows()
with(hpc2day, hist(as.numeric(as.character(Global_active_power)), main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red"))
dev.copy(png,file="plot1.png")
dev.off()