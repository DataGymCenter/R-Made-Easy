setwd("C:/RTuts/Olympics")

library(readxl)   
library(rio) ## install_formats()

### For ALL data - Positional reference
all_oly <- import_list("olympics_multiple_sheets.xlsx", which = c(1,2,3,4,5), rbind = TRUE) # Numbers refer to sheet position

dim(all_oly)
View(all_oly)

### Sheet name reference
all_oly2 <- import_list("olympics_multiple_sheets.xlsx", which = c("Sheet1","Sheet2","Sheet3","Sheet4","Sheet5"), rbind = TRUE)
