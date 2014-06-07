# Load data from the text file
source("loadData.R")
power_data <- loadData("household_power_consumption.txt")

# Create the plot
png("figure/plot1.png",  width = 480, height = 480, units = "px")
hist(power_data$Global_active_power, col="red",
     main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()