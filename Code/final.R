# Purpose:
# I want to look at the amounts of sorghum grown across the country at the county level. Want to look and compare the sizes of farms producing sorghum based on their locations. Also I might look at this production in comparison to the location of bio-refineries since a lot of sorghum is used to create ethanol. 


# clear workspace
rm(list=ls(all=TRUE))

library(tidyverse)
library(dplyr)

sorghum_data <- read_csv("Data/USDA Sorghum Data.csv")

head(sorghum)

summary(sorghum)

# removing columns with NA's

sorghum_data %>%
  select(c( Year, State, County, `County ANSI`, `Ag District`, `Data Item`, Value)) -> sorghum

sorghum %>% 
  filter(State == "NORTH CAROLINA") %>%
  filter(Value != "(D)")-> nc_sorghum
