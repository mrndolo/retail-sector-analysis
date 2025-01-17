# Load necessary libraries
library(dplyr)
library(ggplot2)
library(lubridate)

# Load the dataset
data <- read.csv(file.choose(), header=T)

# Summary of the dataset
summary(data)

# Check structure of the dataset
str(data)

# Convert DtCustomer to Date format
data$DtCustomer <- as.Date(data$DtCustomer, format = "%Y-%m-%d")

# Add a column for the number of years as a customer
data$YearsAsCustomer <- as.numeric(difftime(Sys.Date(), data$DtCustomer, units = "weeks")) / 52


