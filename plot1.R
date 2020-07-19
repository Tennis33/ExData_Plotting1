power <- read.csv('household_power_consumption.txt', header = TRUE, sep = ";")
power1 <- subset(power, power$Date == "1/2/2007" | power$Date == "2/2/2007")
power1$Global_active_power <- as.numeric(as.character(power1$Global_active_power))
power1$Global_reactive_power <- as.numeric(as.character(power1$Global_reactive_power))
power1$Voltage <- as.numeric(as.character(power1$Voltage))
power1$Date1 <- as.character(power1$Date)
power1$Time1 <- as.character(power1$Time)
power1$datetime <- strptime(paste(power1$Date1, power1$Time1), "%d/%m/%Y%H:%M:%S")
power1$Sub_metering_1 <- as.numeric(as.character(power1$Sub_metering_1))
power1$Sub_metering_2 <- as.numeric(as.character(power1$Sub_metering_2))
power1$Sub_metering_3 <- as.numeric(as.character(power1$Sub_metering_3))

# Plot 1:
png(file = 'Plot1.png', width = 480, height = 480, units = "px")
hist(power1$Global_active_power, main = 'Global Active Power',
     xlab = 'Global Active Power(kilowatts)',
     ylab = 'Frequency',
     ylim = range(0, 1200),
     col = 'red')
dev.off()



  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
  

