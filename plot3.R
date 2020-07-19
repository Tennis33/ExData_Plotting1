
# Plot 3:
png(file = "Plot3.png", width = 480, height = 480, units = "px")
plot (x= power1$datetime, y = power1$Sub_metering_1,
      ylab = 'Energy sub metering',
      xlab = " ",
      type = "l")
legend("topright", lty = 1, col = c("black","red","blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
lines(x= power1$datetime, y = power1$Sub_metering_2, col = "red")
lines(x= power1$datetime, y = power1$Sub_metering_3, col = "blue")
dev.off()