#### Preamble ####
# Purpose: Cleans the unnecessary data from raw dataset and rename the selected data
# Author: Hailey Jang
# Date: 15 April 2024
# Contact: hailey.jang@utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -

#### Workspace setup ####
library(tidyverse)
library(readr)
library(dplyr)


#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

data <- read_csv("data/raw_data/raw_data.csv", col_types = cols(
  E1006_NAM = col_character(),
  E2002 = col_double(),
  E2001_Y = col_double(),
  E3023 = col_double(),
  E3007 = col_double(),
  E3009 = col_double(),
  E3011 = col_double()
))

data <- as.data.frame(data)

cleaned_data <- data %>%
  dplyr::select(E1006_NAM, E2002, E2001_Y, E3023, E3007, E3009, E3011)

# Rename the columns to more descriptive names
cleaned_data <- cleaned_data %>%
  rename(
    Country_Name = E1006_NAM,
    Gender = E2002,
    Age = E2001_Y,
    Satisfaction_With_Democracy = E3023,
    Economic_Perception = E3011,
    Corruption_Perception = E3007,
    Political_Perception = E3009
  )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
