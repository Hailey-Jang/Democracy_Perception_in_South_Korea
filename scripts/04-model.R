#### Preamble ####
# Purpose: Conduct the bayesian models based on the analysis data
# Author: Hailey Jang
# Date: 15 April 2024
# Contact: hailey.jang@utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -

#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("data/analysis_data/analysis_data.csv")

### Model data ####

first_model <-
  stan_glm(
    formula = Dissatisfaction_with_democracy ~ Distrust_level_agianst_politicians + Dissatisfaction_with_economy + Dissatisfaction_with_politics,
    data = analysis_data,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 853
  )

second_model <-
  stan_glm(
    formula = Dissatisfaction_with_democracy ~ Distrust_level_agianst_politicians + Dissatisfaction_with_economy + Dissatisfaction_with_politics,
    data = analysis_data,
    family = gaussian(),
    prior = normal(location = 0, scale = 1, autoscale = TRUE), 
    prior_intercept = normal(location = 0, scale = 1, autoscale = TRUE), 
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 853
  )

#### Save model ####
saveRDS(
  first_model,
  file = "models/first_model.rds"
)

saveRDS(
  second_model,
  file = "models/second_model.rds"
)

