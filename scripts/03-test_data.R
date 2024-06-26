#### Preamble ####
# Purpose: Tests the selected data from the cleaned dataset
# Author: Hailey Jang
# Date: 15 April 2024
# Contact: hailey.jang@utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -

#### Workspace setup ####
library(tidyverse)
library(readr)

#### Test data ####

cleaned_data <- read_csv("data/analysis_data/analysis_data.csv")

# Histogram for Age Distribution
cleaned_data %>%
  ggplot(aes(x = Age)) +
  geom_histogram(bins = 30, fill = "blue", color = "black") +
  labs(title = "Histogram of Age Distribution", x = "Age", y = "Frequency") +
  theme_minimal()

# Boxplot for Satisfaction with Democracy
cleaned_data %>%
  ggplot(aes(x = "", y = Dissatisfaction_with_democracy)) +
  geom_boxplot(fill = "cyan", color = "black") +
  labs(title = "Boxplot of Satisfaction with Democracy", x = "", y = "Satisfaction Level") +
  theme_minimal()

# Bar Plot for Gender Distribution
cleaned_data %>%
  ggplot(aes(x = as.factor(Gender))) +
  geom_bar(fill = "magenta") +
  labs(title = "Gender Distribution", x = "Gender", y = "Count") +
  theme_minimal()
