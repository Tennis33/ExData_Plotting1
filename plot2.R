# Plot 2:
png(file = "Plot2.png", width = 480, height = 480, units = "px")
plot(x = power1$datetime, y = power1$Global_active_power,
     ylab = "Global Active Power (kilowatts)",
     xlab = " ",
     type = "l")
dev.off()