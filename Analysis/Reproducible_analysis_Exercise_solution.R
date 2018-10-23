##########
# Solution to the exercise in Reproducible_analysis_in_R.Rmd
# This code downloads data from the Department for Transport website
# and calculates a few aggregated statistics
# Author: Stefano De Sabbata
# Date: 23 October 2018
##########

library(dyplr)
library(knitr)

# Load data about accidents
accidents <- read.csv("Data/Accidents_2015.csv")

accidents$Time_of_Day <- as.numeric(substr(accidents$Time, start = 1, stop = 2))

# Count per Time of Day
accidents_hour_count <- count(
  accidents, 
  Time_of_Day
)

# Inspect the content in data frame
kable(accidents_hour_count)

# Group and average severity per Time of Day
accidents_hour_severity <- summarise(
  group_by(
    accidents,
    Time_of_Day
  ),
  avg_severity = mean(Accident_Severity)
)

# Inspect the content in data frame
kable(accidents_hour_severity)


# Load data about vehicles
vehicles <- read.csv("Data/Vehicles_2015.csv")

# Merge the data
accidents_vehicles <- merge(accidents, vehicles, by = "Accident_Index")

# Group and average severity per Time of Day
accidents_vehicles_hour_dirver <- summarise(
  group_by(
    accidents_vehicles,
    Time_of_Day
  ),
  avg_severity = mean(Age_of_Driver)
)

# Inspect the content in data frame
kable(accidents_vehicles_hour_dirver)
