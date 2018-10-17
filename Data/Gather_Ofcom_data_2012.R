##########
# This code downloads data from the Ofcom website
# regarding the UK mobile network coverage in 2012
##########

library(tidyverse)

# Gather the data from the website
# Skipping first two rows containing column names
# Adding shorter column names
coverage_data <- 
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
  )

mutate_at(coverage_data,
    2:19,
    ~str_replace(., "%", "")
  )

coverage_data

# Transforming percentages strings to numbers
for(i in 2:19){
  #coverage[,i] <- as.numeric( gsub("%", "", coverage[,i]) )
  coverage_data <- coverage_data %>%
    mutate_a
}


# Check data
head(coverage[,c(1,2)], n=3)

# Save data to csv
write_csv(coverage, "Data/ofcom_mobile_coverage_2012.csv")
