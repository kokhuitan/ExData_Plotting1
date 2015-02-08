plot1 <- function (file) {
  data<-read.csv2(file)
  data1<-data$Global_active_power
  data1<-as.numeric(as.character(data1))
  hist(data1, main="Global Active Power", xlab="Global Active Power (kilowatts)",col="red")
  dev.copy(png,'plot1.png')
  dev.off()
}