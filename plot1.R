##################################################################################
## Exploratory Data Analysis
## by Jeff Leek, PhD, Brian Caffo, PhD, Roger D. Peng, PhD
## 
## plot1.R by JAGomez
## 09-Oct-2014
##
## plot1.R that does the following:
## 1. Read Data and subset it
## 2. Open Graphic Device PNG
## 3. Create hist
##
##################################################################################

## Read data from files
data <- read.csv("../exdata_data_household_power_consumption/data.txt", sep=';', na.strings="?", header=T)

## Date format and Subsetting the data
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
subdata <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data)

## Open Graphic Device PNG
png(filename = "plot1.png", width = 480, height = 480, units = "px")

##Generates the hist
hist(subdata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab="Frequency", col = "Red")

##Close Graphic Device
dev.off()

