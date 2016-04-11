# Read the required data
source("read_data.R")

# Create a plot3 png file 

png(filename = "plot3.png", width = 480, height = 480)   

# Create Plot3

plot(hs_pwr_cons$DateTime,hs_pwr_cons$Sub_metering_1, xlab = "", ylab = "Energy sub metering",type = "l")
lines(hs_pwr_cons$DateTime,hs_pwr_cons$Sub_metering_2, col="red")
lines(hs_pwr_cons$DateTime,hs_pwr_cons$Sub_metering_3, col="blue")
legend("topright",col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1 , lwd = 1)

# Save the file
dev.off()
