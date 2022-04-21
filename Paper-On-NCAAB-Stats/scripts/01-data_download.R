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
raw_data <- readr::read_csv("inputs/data/raw_data.csv"
)
# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(first_col, 
         second_col)
rm(raw_data)


#### What's next? ####