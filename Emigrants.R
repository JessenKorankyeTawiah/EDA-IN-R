#DATA IMPORTATION
data3 <- read.csv(file.choose())
#COUNT FOR OBSERVATIONS AND NUMBER OF VARIABLES
dim(data3)
#IDENTIFYING ALL VARIABLES WITH MISSING VALUES
names(data3)[colSums(is.na(data3)) > 0]
# TYPES OF VARIABLES
str(data3)
library(dplyr)
reg3 <- data3 %>% 
  group_by(region,e02d) %>% 
  summarise(Count = n(), .groups = 'drop')
