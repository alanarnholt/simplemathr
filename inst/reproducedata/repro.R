# Run this to get data in /data folder in *.rda format
library(devtools)
library(repmis)

# Read a csv file from github
fgithub <- "https://raw.github.com/alanarnholt/Data/master/"
AGGRESSION <- repmis::source_data(paste(fgithub, "AGGRESSION.csv", sep = ""))
use_data(AGGRESSION, overwrite = TRUE)

# Now let us try to read in testWoodcarb already stored locally
library(readxl)
testWoodcarb <- read_excel("./inst/extdata/testWoodcarb.xlsx")
use_data(testWoodcarb, overwrite = TRUE)

# Read from github
library(xlsx)
site <- "https://github.com/alanarnholt/USFS/raw/master/Data/hair1958.xlsx"
download.file(site, "./inst/extdata/hair1958.xlsx")
hair1958 <- read.xlsx("./inst/extdata/hair1958.xlsx", sheetIndex = 1, header = FALSE)
use_data(hair1958, overwrite = TRUE)
