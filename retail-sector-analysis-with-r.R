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
