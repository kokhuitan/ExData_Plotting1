plot2 <- function (file) {
  data<-read.csv2(file)
  dateTime <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))
  data$Global_active_power<-as.numeric(as.character(data$Global_active_power))
  plot(dateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.copy(png,'plot2.png')
  dev.off()
}