#### Preamble ####
# Purpose: Clean the 2020 Australian General Social Survey summary results data downloaded from the Australia Bureau of Statistics
# Author: Christina Chan-Ying, Yandrickx Dumalog, Reese Halfyard
# Data: 15 March 2022
# Contact: christina.chanying@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("readxl")

library(readxl)
library(tidyverse)

# Read in the raw data. 
cleaned_data_males <- read_excel("inputs/data/GSS_Table3.xlsx", sheet = 1)
cleaned_data_females <- read_excel("inputs/data/GSS_Table3.xlsx", sheet = 2)
cleaned_data_persons <- read_excel("inputs/data/GSS_Table3.xlsx", sheet = 3)

# Save the cleaned data as csv files
write_csv(cleaned_data_males, "inputs/data/cleaned_data_males.csv")
write_csv(cleaned_data_females, "inputs/data/cleaned_data_females.csv")
write_csv(cleaned_data_persons, "inputs/data/cleaned_data_persons.csv")


         