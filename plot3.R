# Load data from the text file
source("loadData.R")
power_data <- loadData("household_power_consumption.txt", 
                       c("1/2/2007", "2/2/2007"))

# Create the plot
png("figure/plot3.png",  width = 480, height = 480, units = "px")
plot(power_data$Datetime, power_data$Sub_metering_1, type="l",
     ylab="Energy sub metering", xlab="")
lines(power_data$Datetime, power_data$Sub_metering_2, col=2)
lines(power_data$Datetime, power_data$Sub_metering_3, col=4)
legend("topright", lty=c(1,1,1), col=c(1,2,4), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
