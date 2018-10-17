##########
# This code downloads data from the Ofcom website
# regarding the UK mobile network coverage in 2012
##########

library(readr)

# Gather the data from the website
# Skipping first row, that contains an extra head title for the data
coverage_original_data <- read_csv(
  "https://www.ofcom.org.uk/__data/assets/file/0034/94678/ofcom-uk-mobile-coverage-data-2012.csv", 
  skip=1
)

# Check data
head(coverage_original_data[,c(1,2)], n=3)

# Copy and change column names
coverage <- as.data.frame(coverage_original_data)
colnames(coverage) <- c("LocalAuthority",
                        "M2G.NoS","M2G.1op","M2G.2op","M2G.All",
                        "M2G.NoS.Prem","M2G.1op.Prem","M2G.2op.Prem","M2G.All.Prem",
                        "M3G.NoS","M3G.1op","M3G.2op","M3G.3op","M3G.All",
                        "M3G.NoS.Prem","M3G.1op.Prem","M3G.2op.Prem","M3G.3op.Prem","M3G.All.Prem",
                        "MonthMB.Prem")


# Transforming percentages strings to numbers
for(i in 2:19){
  coverage[,i] <- as.numeric( gsub("%", "", coverage[,i]) )
}


# Check data
head(coverage[,c(1,2)], n=3)

# Save data to csv
write_csv(coverage, "Data/ofcom_mobile_coverage_2012.csv")
