'set the plot area'
par(mfrow=c(2,2))

'plot the top left'
with(mydata_sub,plot(Datetime,Global_active_power,type="l",xlab="",ylab="Global Active Power",cex.lab=0.5,cex.axis=0.5))

'plot the top right'
with(mydata_sub,plot(Datetime,as.numeric(as.character(Voltage)),type="l",xlab="datetime",ylab="Voltage",cex.lab=0.5,cex.axis=0.5))

'plot the bottom left'
with(mydata_sub,plot(Datetime,as.numeric(as.character(Sub_metering_1)),type="l",xlab="",ylab="Energy sub metering",cex.lab=0.5,cex.axis=0.5))
with(mydata_sub,lines(Datetime,as.numeric(as.character(Sub_metering_2)),col="red"))
with(mydata_sub,lines(Datetime,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright",border = "white", col = c("black","red","blue"),legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, cex=0.5)

'plot the bottom right'
with(mydata_sub,plot(Datetime,as.numeric(as.character(Global_reactive_power)),type="l",xlab="datetime",ylab="Global_reactive_power",font.axis=1,cex.axis=0.5,cex.lab=0.5))