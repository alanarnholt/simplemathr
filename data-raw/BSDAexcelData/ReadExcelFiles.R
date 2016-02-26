#### Read the excel files and store properly
library(devtools)

library(xlsx)
Abbey <- read.xlsx("./data-raw/BSDAexcelData/abbey.xls", sheetIndex = 1)
use_data(Abbey, overwrite = TRUE)

# Problems with how the data was stored!!!!!
# Solution open in EXCEL and resave as csv file.

Abilene <- read.csv("./data-raw/BSDAexcelData/Abilene.csv", colClasses = c("factor", "factor", "numeric"))
use_data(Abilene, overwrite = TRUE)
##


AbilityM <- matrix(c(56, 35, 61, 43, 54, 61, 21, 42, 8, 19), nrow = 2)
dimnames(AbilityM) <- list(Gender = c("girl", "boy"), 
                           Skill = c("hopeless", "belowavg", "average", "aboveavg", "superior"))
AbilityT <- as.table(AbilityM)
AbilityDF <- as.data.frame(AbilityT)
Ability <- vcdExtra::expand.dft(AbilityDF)
use_data(Ability, overwrite = TRUE)

################################################################################
Abortion <- read.csv("./data-raw/BSDAexcelData/ABOR.csv")
Abortion <- Abortion[,1:9]
head(Abortion)
Abortion$rate <- ifelse(Abortion$rate1996 <= 20, "Low", "High")
head(Abortion)
use_data(Abortion, overwrite = TRUE)
