> library("sqldf")
> hpc<-read.csv.sql("household_power_consumption.txt","select * from file where Date = '1/2/2007' or Date = '2/2/2007'",sep=";")
h
> head(hpc)
      Date     Time Global_active_power Global_reactive_power Voltage
1 1/2/2007 00:00:00               0.326                 0.128  243.15
2 1/2/2007 00:01:00               0.326                 0.130  243.32
3 1/2/2007 00:02:00               0.324                 0.132  243.51
4 1/2/2007 00:03:00               0.324                 0.134  243.90
5 1/2/2007 00:04:00               0.322                 0.130  243.16
6 1/2/2007 00:05:00               0.320                 0.126  242.29
  Global_intensity Sub_metering_1 Sub_metering_2 Sub_metering_3
1              1.4              0              0              0
2              1.4              0              0              0
3              1.4              0              0              0
4              1.4              0              0              0
5              1.4              0              0              0
6              1.4              0              0              0
> library(graphics)
> png("plot1.png",width=480,height=480)
> hist(hpc$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency",col="red")
> dev.off()
quartz_off_screen 
                2 
> png("plot1.png",width=480,height=480)
> hist(hpc$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency",col="red")
> dev.off()
quartz_off_screen 
                2 
> 