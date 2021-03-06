mydata <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
mydata$Date <- strptime(mydata$Date,format="%d/%m/%Y")
mydata_sub <- subset(mydata, Date == "2007-02-01" | Date == "2007-02-02" )
mydata_sub$Global_active_power <- as.numeric(as.character(mydata_sub$Global_active_power))
mydata_sub$Datetime<- as.POSIXct(paste(mydata_sub$Date, mydata_sub$Time), format="%Y-%m-%d %H:%M:%S")
with(mydata_sub,plot(Datetime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))