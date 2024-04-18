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
corruption_levels <- 1:8
political_levels <- 1:5
economic_levels <- 1:8
age_range <- 1931:1997

# Function to simulate data
simulate_data <- function(n) {
  data_frame(
    Country_Name = sample(country_names, n, replace = TRUE),
    Gender = sample(genders, n, replace = TRUE),
    Age = sample(age_range, n, replace = TRUE),
    Satisfaction_With_Democracy = sample(satisfaction_levels, n, replace = TRUE),
    Corruption_Perception = sample(corruption_levels, n, replace = TRUE),
    Political_Perception = sample(political_levels, n, replace = TRUE),
    Economic_Perception = sample(economic_levels, n, replace = TRUE)
  )
}

# Generate simulated data
set.seed(123) 
simulated_data <- simulate_data(1000)  
print(simulated_data)







