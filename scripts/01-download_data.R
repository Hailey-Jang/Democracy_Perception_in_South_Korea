#### Preamble ####
# Purpose: Downloads and saves the data
# Author: Hailey Jang
# Date: 15 April 2024
# Contact: hailey.jang@utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -


#### Workspace setup ####
library(tidyverse)

#### Download data ####
# Data was downloaded from https://cses.org/data-download/cses-module-5-2016-2021/

#### Save data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")
