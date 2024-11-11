#DATA IMPORTATION
data5 <- read.csv(file.choose())
#COUNT FOR OBSERVATIONS AND NUMBER OF VARIABLES
dim(data5)
#IDENTIFYING ALL VARIABLES WITH MISSING VALUES
names(data5)[colSums(is.na(data5)) > 0]
# TYPES OF VARIABLES
str(data5)
library(dplyr)
reg5 <- data5 %>% 
  group_by(region,mr02b) %>% 
  summarise(Count = n(), .groups = 'drop')