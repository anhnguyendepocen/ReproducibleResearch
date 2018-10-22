##########
# Example make file in R
# Author: Stefano De Sabbata
# Date: Oct 22, 2018
##########


# Step 1: execute script to gather data
source("Data/Gather_Ofcom_data_2012.R")

# Step 2: save a copy of the data in current folder
system("cp Data/ofcom_mobile_coverage_2012.csv Materials/Lecture/")