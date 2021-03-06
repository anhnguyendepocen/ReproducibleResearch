##########
# This code downloads data from the Ofcom website
# regarding the UK mobile network coverage in 2012
# This is also an example of how to use tidyverse
# libraries and pipe-based programming
# Author: Stefano De Sabbata
# Date: 23 October 2018
##########

# NOTE: if the zip file is not available at the URL in the script below
# a copy is available in the Backup folder

library(tidyverse)

# Loading data from Ofcom website
coverage_data <- 
  
  # Gather the data from the website
  # Skipping first two rows containing column names
  # Adding shorter column names
  read_csv(
    file = "https://www.ofcom.org.uk/__data/assets/file/0034/94678/ofcom-uk-mobile-coverage-data-2012.csv", 
    skip = 2, col_names = FALSE
  ) %>%
  
  rename( 
      LocalAuthority = X1,
      M2G_NoS = X2,
      M2G_1op = X3,
      M2G_2op = X4,
      M2G_All = X5,
      M2G_NoS_Prem = X6,
      M2G_1op_Prem = X7,
      M2G_2op_Prem = X8,
      M2G_All_Prem = X9,
      M3G_NoS = X10,
      M3G_1op = X11,
      M3G_2op = X12,
      M3G_3op = X13,
      M3G_All = X14,
      M3G_NoS_Prem = X15,
      M3G_1op_Prem = X16,
      M3G_2op_Prem = X17,
      M3G_3op_Prem = X18,
      M3G_All_Prem = X19,
      MonthMB_Prem = X20
  ) %>%
  
  # Percentages are read as strings
  # Remove percentage symbol
  mutate_at(
    2:19,
    ~str_replace(., "%", "") # remake of the function using tilde and dot
  ) %>%
  
  # Transform strings to numeric
  mutate_at(
    2:19,
    ~as.numeric(.) # remake of the function using tilde and dot
  )

# Save data to csv
write_csv(coverage_data, path = "Data/ofcom_mobile_coverage_2012.csv")
