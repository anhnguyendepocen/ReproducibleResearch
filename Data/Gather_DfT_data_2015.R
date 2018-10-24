##########
# This code downloads data from the Department for Transport website
# regarding road accidents and safety data from 2015 in the Data folder
# and unzip them in the same folder
# Author: Stefano De Sabbata
# Date: 23 October 2018
##########

# NOTE: if the zip file is not available at the URL in the script below
# a copy is available in the Backup folder

# Set the values: URL and file name
data_url <- "http://data.dft.gov.uk/road-accidents-safety-data/RoadSafetyData_2015.zip"
data_file_name <- "Data/RoadSafetyData_2015.zip"

# Download the file
download.file(data_url, data_file_name)

# Depending on the system these might also work:
# or download.file(data_url, data_file_name, method="auto")
# or download.file(data_url, data_file_name, method="curl")

# Unzip file in the Data folder
unzip(data_file_name, exdir = "Data/")
