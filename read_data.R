# Read Data from the household_power_consumption.txt file

data <- read.table("household_power_consumption.txt",header=TRUE,sep=';', na.strings='?')

# filter the data for 1/2/2007 and 2/2/2007

hs_pwr_cons  <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')

hs_pwr_cons$DateTime <- strptime(paste(hs_pwr_cons$Date, hs_pwr_cons$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

hs_pwr_cons$Global_active_power <- as.numeric(hs_pwr_cons$Global_active_power)
hs_pwr_cons$Global_reactive_power <- as.numeric(hs_pwr_cons$Global_reactive_power)
hs_pwr_cons$Voltage <- as.numeric(hs_pwr_cons$Voltage)

hs_pwr_cons$Sub_metering_1 <- as.numeric(hs_pwr_cons$Sub_metering_1)
hs_pwr_cons$Sub_metering_2 <- as.numeric(hs_pwr_cons$Sub_metering_2)
hs_pwr_cons$Sub_metering_3 <- as.numeric(hs_pwr_cons$Sub_metering_3)
