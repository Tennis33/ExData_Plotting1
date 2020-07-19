# Plot 4:
png(file = "Plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2))
par(mar = c(4,4,2,1))

plot (x= power1$datetime, y = power1$Global_active_power,
      ylab = 'Global Active power (kilowatts)',
      xlab ='  ',
      type = "l")

plot (x= power1$datetime, y = power1$Voltage,
      ylab = 'Voltage',
      xlab ='datetime',
      type = "l")

plot (x= power1$datetime, y = power1$Sub_metering_1,
      ylab = 'Energy sub metering',
      xlab ='  ',
      type = "l")
legend("topright" , bty = "n", lty = 1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
lines(x= power1$datetime, y = power1$Sub_metering_2, col = "red")
lines(x= power1$datetime, y = power1$Sub_metering_3, col = "blue")

plot (x= power1$datetime, y = power1$Global_reactive_power,
      ylab = 'Global_reactive_power',
      xlab ='datetime',
      ylim = range(0,0.5),
      type = "l")
dev.off()