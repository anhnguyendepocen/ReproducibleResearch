##########
# Example make file in R
# Author: Stefano De Sabbata
# Date: Oct 22, 2018
##########

# Un comment the install.packages command below
# if the Tidyverse is not installed
#install.packages("tidyverse")

# Load necessary libraries
library(rmarkdown)

# Step 0: Make clean
# Delete data files and files compiled from R Markdown scripts
source(Make_Clean.R)

# Step 1: execute the scripts that gather data
# from Ofcom
source("Data/Gather_Ofcom_data_2012.R")
# and from the Department for Transport
source("Data/Gather_DfT_data_2015.R")

# Compile the lecture file
rmarkdown::render("Materials/Lecture/ReproducibleResearchWithR.Rmd")

# Compile the analysis document for the practical session
rmarkdown::render("Materials/Lecture/ReproducibleResearchWithR.Rmd")
