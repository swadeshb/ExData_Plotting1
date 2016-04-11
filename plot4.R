# Read the required data
source("read_data.R")

# Create a plot4 png file 

png(filename = "plot4.png", width = 480, height = 480)   

# Create Plot4

par(mfrow = c(2,2))

# plot 1
plot(hs_pwr_cons$DateTime,hs_pwr_cons$Global_active_power, xlab = '', ylab = "Global Active Power",type = 'l')

#plot 2
plot(hs_pwr_cons$DateTime,hs_pwr_cons$Voltage, xlab = 'datetime', ylab = "Voltage",type = 'l')

#plot 3

plot(hs_pwr_cons$DateTime,hs_pwr_cons$Sub_metering_1, xlab = "", ylab = "Energy sub metering",type = "l")
lines(hs_pwr_cons$DateTime,hs_pwr_cons$Sub_metering_2, col="red")
lines(hs_pwr_cons$DateTime,hs_pwr_cons$Sub_metering_3, col="blue")
legend("topright",col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1 , lwd = 1)

# plot 4
plot(hs_pwr_cons$DateTime,hs_pwr_cons$Global_reactive_power, xlab = 'datetime', ylab = "Global_reactive_power",type = 'l')

# Save the file
dev.off()
