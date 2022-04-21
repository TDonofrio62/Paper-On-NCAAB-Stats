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

# Read in the raw data. 
year1718 <- read_csv("inputs/data/2017-18 ncaab stats.csv")
year1819 <- read_csv("inputs/data/2018-19 ncaab stats.csv")
year1920 <- read_csv("inputs/data/2019-20 ncaab stats.csv")
year2021 <- read_csv("inputs/data/2020-21 ncaab stats.csv")
year2122 <- read_csv("inputs/data/2021-22 ncaab stats.csv")

# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(first_col, 
         second_col)
rm(raw_data)
         

#### What's next? ####



         