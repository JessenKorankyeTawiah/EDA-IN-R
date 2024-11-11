#DATA IMPORTATION
data4 <- read.csv(file.choose())
#COUNT FOR OBSERVATIONS AND NUMBER OF VARIABLES
dim(data4)
#IDENTIFYING ALL VARIABLES WITH MISSING VALUES
names(data4)[colSums(is.na(data4)) > 0]
# TYPES OF VARIABLES
str(data4)
library(dplyr)
reg4 <- data4 %>% 
  group_by(region,NA) %>% 
  summarise(Count = n(), .groups = 'drop')
#Gender isn't found in dataset