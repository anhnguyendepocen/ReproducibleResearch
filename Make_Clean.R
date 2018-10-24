##########
# Example make clean file in R
# Author: Stefano De Sabbata
# Date: Oct 22, 2018
##########

# Delete data files from Data folder
unlink("Data/*.csv")
unlink("Data/*.zip")

# Delete compiled files from R Markdown scripts
unlink("Analysis/*.html")
unlink("Analysis/*.pdf")
unlink("Materials/Lecture/*.html")
unlink("Materials/Practical/*.pdf")