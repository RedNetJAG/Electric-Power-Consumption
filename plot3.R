##################################################################################
## Exploratory Data Analysis
## by Jeff Leek, PhD, Brian Caffo, PhD, Roger D. Peng, PhD
## 
## plot1.R by JAGomez
## 09/10/2014
##
## plot1.R that does the following:
## 1. Read Data and subset it
## 2. Open Graphic Device PNG
## 3. Create plot
##
##################################################################################

## Read data from files
data <- read.csv("../exdata_data_household_power_consumption/data.txt", sep=';', na.strings="?", header=T)

## Date format and Subsetting the data
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
subdata <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data)

## Paste and Normalized Date & Time
DateTime <- paste(subdata$Date, subdata$Time)
subdata$Datetime <- as.POSIXct(DateTime)

## Open Graphic Device PNG
png(filename = "plot2.png", width = 480, height = 480, units = "px")

##Generates the plot



##Close Graphic Device
dev.off()