# Read the required data
source("read_data.R")
# Create a plot1 png file 

png(filename = "plot1.png", width = 480, height = 480)   

# Create Plot1

hist(hs_pwr_cons$Global_active_power, col = "red", main = "Global Active Power" , ylab = "Frequency", xlab = "Global Active Power(kilowatts)")

# Save the file
dev.off()
