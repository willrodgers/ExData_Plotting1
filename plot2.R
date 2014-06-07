# Load data from the text file
source("loadData.R")
power_data <- loadData("household_power_consumption.txt")

# Create the plot
png("figure/plot2.png",  width = 480, height = 480, units = "px")
plot(power_data$Datetime, power_data$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
