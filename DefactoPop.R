#DATA IMPORTATION
data2 <- read.csv(file.choose())
#COUNT FOR OBSERVATIONS AND NUMBER OF VARIABLES
dim(data2)
#IDENTIFYING ALL VARIABLES WITH MISSING VALUES
names(data2)[colSums(is.na(data2)) > 0]
# TYPES OF VARIABLES
str(data2)
library(dplyr)
reg2 <- data2 %>% 
  group_by(region,NA) %>% 
  summarise(Count = n(), .groups = 'drop')
