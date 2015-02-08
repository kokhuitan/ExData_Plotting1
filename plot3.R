plot3 <- function (file) {
  data<-read.csv2(file)
  data$Sub_metering_1<-as.numeric(as.character(data$Sub_metering_1))
  data$Sub_metering_2<-as.numeric(as.character(data$Sub_metering_2))
  data$Sub_metering_3<-as.numeric(as.character(data$Sub_metering_3))
  dateTime <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))
  plot(dateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(dateTime, data$Sub_metering_2, col="red")
  lines(dateTime, data$Sub_metering_3, col="blue")
  legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, col=c("black","red","blue"))
  dev.copy(png,'plot3.png')
  dev.off()
}