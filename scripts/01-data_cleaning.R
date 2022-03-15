#### Preamble ####
# Purpose: Clean the survey data downloaded from [...UPDATE ME!!!!!]
# Author: Christina Chan-Ying, Yandrickx Dumalog, Reese Halfyard
# Data: 3 January 2021
# Contact: rohan.alexander@utoronto.ca [PROBABLY CHANGE THIS ALSO!!!!]
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
# install.packages("xlsx")
# install.packages("rio")
# 
# library(rio)
# library(xlsx)

install.packages("readxl")
library(readxl)
library(dplyr)
library(haven)
library(tidyverse)

# Read in the raw data. 


cleaned_data_males <- read_excel("inputs/data/GSS_Table3.xlsx", sheet = 2)
write_csv(cleaned_data_males, "inputs/data/cleaned_data_males.csv")


install.packages("xlsx")
library("xlsx")
male_data <- read.xlsx("inputs/data/GSS_Table3.xlsx", 2, header=TRUE, skipEmptyRows = TRUE, colNames = TRUE, rowNames = TRUE)
male_data

         