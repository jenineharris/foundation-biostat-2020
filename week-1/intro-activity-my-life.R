###########################################
# Project: My life in months
# Purpose: Plot where I've lived by the month
# Author: Jenine 
# Edit date: August 27, 2020
# Data: No external data files used
###########################################

# STEP 1: TYPE IN DATA

# the eras of my life (choose 10 or fewer)
era <- c("Eugene, Oregon", 
         "Corvallis, Oregon", 
         "Eugene, Oregon 2",
         "Avignon, France", 
         "Eugene, Oregon 3",
         "Washington DC", 
         "Eugene, Oregon 4", 
         "Bend, Oregon", 
         "St. Louis, Missouri")

# the months I spent in each era (same number and order as eras)
months <- c(213, 
            21, 
            18,
            4, 
            12, 
            16, 
            67, 
            12, 
            233) 

# STEP 2: MAKE A TABLE FROM THE DATA

# combine the vectors
my_life <- as.table(setNames(object = months, nm = era))
my_life 

# STEP 3: MAKE THE GRAPH

# open the waffle package (install first through Tools menu)
library(package = "waffle")

# make a waffle plot with each column showing 1 year
waffle(parts = my_life, rows = 12, 
       colors = c("#a6cee3",
                  "#1f78b4",
                  "#b2df8a",
                  "#33a02c",
                  "#fb9a99",
                  "#e31a1c",
                  "#fdbf6f",
                  "#ff7f00",
                  "#cab2d6"))
