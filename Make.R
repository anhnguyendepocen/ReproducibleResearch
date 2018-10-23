##########
# Example make file in R
# Author: Stefano De Sabbata
# Date: Oct 22, 2018
##########

# Step 0: install tidyverse
install.packages("tidyverse")

# Step 1: execute the scripts that gather data
# from Ofcom
source("Data/Gather_Ofcom_data_2012.R")
# and from the Department for Transport
source("Data/Gather_DfT_data_2015.R")
