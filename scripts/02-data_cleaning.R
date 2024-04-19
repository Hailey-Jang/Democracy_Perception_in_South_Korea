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
library(arrow)


#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

data <- read_csv("data/raw_data/raw_data.csv", col_types = cols(
  E1006_NAM = col_character(),
  E2002 = col_double(),
  E2001_Y = col_double(),
  E3023 = col_double(),
  E3004_3 = col_double(),
  E3009 = col_double(),
  E3011 = col_double()
))

data <- as.data.frame(data)

cleaned_data <- data %>%
  dplyr::select(E1006_NAM, E2002, E2001_Y, E3023, E3004_3, E3009, E3011)

# Rename the columns to more descriptive names
cleaned_data <- cleaned_data %>%
  rename(
    Country = E1006_NAM,
    Gender = E2002,
    Age = E2001_Y,
    Dissatisfaction_with_democracy = E3023,
    Dissatisfaction_with_economy = E3011,
    Distrust_level_agianst_politicians = E3004_3,
    Dissatisfaction_with_politics = E3009
  )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")

data <- read_csv("data/analysis_data/analysis_data.csv")

# Filter out rows where Corruption_Perception or Economic_Perception is 8 (don't know)
filtered_data <- data %>%
  filter(Dissatisfaction_with_economy != 8 & Distrust_level_agianst_politicians != 8)

head(filtered_data)

#### Save data ####
write_csv(filtered_data, "data/analysis_data/analysis_data.csv")
write_parquet(filtered_data, "data/analysis_data/analysis_data.parquet")

