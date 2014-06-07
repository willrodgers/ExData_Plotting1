# Load data from the text file
source("loadData.R")
power_data <- loadData("household_power_consumption.txt", 
                       c("1/2/2007", "2/2/2007"))

# Create the plot
png("figure/plot4.png",  width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))
plot(power_data$Datetime, power_data$Global_active_power, type="l",
     ylab="Global Active Power", xlab="")
plot(power_data$Datetime, power_data$Voltage, type="l",
     ylab="Voltage", xlab="datetime")
plot(power_data$Datetime, power_data$Sub_metering_1, type="l",
     ylab="Energy sub metering", xlab="")
lines(power_data$Datetime, power_data$Sub_metering_2, col=2)
lines(power_data$Datetime, power_data$Sub_metering_3, col=4)
legend("topright", lty=c(1,1,1), col=c(1,2,4), bty="n",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(power_data$Datetime, power_data$Global_reactive_power, type="l",
     ylab="Global_reactive_power", xlab="datetime")
dev.off()
