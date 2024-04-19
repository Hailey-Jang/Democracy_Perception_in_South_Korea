#### Preamble ####
# Purpose: Simulates data allowing for safe testing
# Author: Hailey Jang
# Date: 15 April 2024
# Contact: hailey.jang@utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -

# Load necessary library
library(dplyr)

country_names <- c("Republic of Korea") 
genders <- c(1, 2)  # 1 for Male, 2 for Female
satisfaction_levels <- 1:5
Distrusts_levels <- 1:5
political_levels <- 1:5
economic_levels <- 1:4
age_range <- 1931:1997

# Function to simulate data
simulated_data <- function(n) {
  data_frame(
    Country_Name = sample(country_names, n, replace = TRUE),
    Gender = sample(genders, n, replace = TRUE),
    Age = sample(age_range, n, replace = TRUE),
    Dissatisfaction_with_democracy = sample(satisfaction_levels, n, replace = TRUE),
    Distrust_level_agianst_politician = sample(Distrusts_levels, n, replace = TRUE),
    Dissatisfaction_with_politics = sample(political_levels, n, replace = TRUE),
    Dissatisfaction_with_economy = sample(economic_levels, n, replace = TRUE)
  )
}

# Generate simulated data
set.seed(123) 
simulated_data <- simulate_data(1000)  
print(simulated_data)







