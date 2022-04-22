#### Preamble ####
# Purpose: Clean the data downloaded from Sports Reference
# Author: Thomas D'Onofrio
# Data: 21 April 2022
# Contact: thomas.donofrio@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
library(janitor)

# Read in the raw data. 
year_17_18 <- read_csv("inputs/data/2017-18 ncaab stats.csv")
year_18_19 <- read_csv("inputs/data/2018-19 ncaab stats.csv")
year_19_20 <- read_csv("inputs/data/2019-20 ncaab stats.csv")
year_20_21 <- read_csv("inputs/data/2020-21 ncaab stats.csv")
year_21_22 <- read_csv("inputs/data/2021-22 ncaab stats.csv")


#Merge Datasets

ncaab_stats_unclean <- rbind(year_17_18, year_18_19, year_19_20, year_20_21, year_21_22)

#Clean Dataset

ncaab_stats <- ncaab_stats_unclean %>% 
  clean_names() %>% 
  drop_na(school, w_l_percent) %>% 
  mutate(over_500 = ifelse(w_l_percent >= 0.5, TRUE, FALSE)) %>% 
  select(c(1,2,35,7,22,23,25,26,27,28,29,30,32,33)) %>% 
  rename(`3pa_rate` = `x3p_ar`)

# Write as csv

write_csv(ncaab_stats, "inputs/data/ncaab_stats.csv")



         