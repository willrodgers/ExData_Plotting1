loadData <- function(file) {
  
  require(data.table)
  
  power_data <- fread(file)
  power_data <- power_data[Date %in% c("1/2/2007", "2/2/2007"),]
  power_data <- as.data.frame(power_data)
  power_data$Datetime <- strptime(paste(power_data$Date, power_data$Time), "%d/%m/%Y %H:%M:%S")
  power_data$Global_active_power <- as.numeric(power_data$Global_active_power)
  power_data$Global_reactive_power <- as.numeric(power_data$Global_reactive_power)
  power_data$Voltage <- as.numeric(power_data$Voltage)
  power_data$Sub_metering_1 <- as.numeric(power_data$Sub_metering_1)
  power_data$Sub_metering_2 <- as.numeric(power_data$Sub_metering_2)
  power_data$Sub_metering_3 <- as.numeric(power_data$Sub_metering_3)
  
  power_data
}