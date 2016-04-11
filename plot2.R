# Read the required data
source("read_data.R")

# Create a plot2 png file 

png(filename = "plot2.png", width = 480, height = 480)   

# Create Plot2

plot(hs_pwr_cons$DateTime,hs_pwr_cons$Global_active_power, xlab = '', ylab = "Global Active Power(kilowatts)",type = 'l')

# Save the file
dev.off()
