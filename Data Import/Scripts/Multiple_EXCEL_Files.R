# Set the files directory 
dir  <- "C:/RTuts/New folder/Olympics/XLSX/"

# Load the packages, assuming you have installed the packages
library(readxl)
library(tidyverse)
library(tibble)

### 
files <- list.files(path = dir, pattern = "*.xlsx", full.names = F)
files # Check that the appropriate files are read

# Apply 'read_excel' to all the files
olys <- sapply(files, read_excel, simplify=FALSE) %>% 
  bind_rows(.id = "file")

###
oly_XL <- as_tibble(olys) %>% 
  dplyr::select(-file) # Remove the 'file' column

view(oly_XL)



