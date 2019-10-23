library(tidyverse)
library(readr)
set.seed(8888)
Homeless_Overall <- read_csv("Overall_Homeless.csv")
Homeless_Individual <- read_csv("Homeless_Individual.csv")
Homeless_Families <- read_csv("Homeless_in_Families.csv")
Homeless_Sheltered <- read_csv("Sheltered_Homeless.csv")
glimpse(Homeless_Overall)
home_noyear <-
  Homeless_Overall %>% 
  select(-Year)
home_noyear.pr<-princomp(home_noyear,cor=TRUE)

summary(home_noyear.pr,loadings=TRUE)
# To try to analyze the first 2 components in this output

screeplot(home_noyear.pr,type="lines")
p<-predict(home_noyear.pr)
