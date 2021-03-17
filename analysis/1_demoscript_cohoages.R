# GitHub for Fisheries Scientists
# Justin Priest
# justin.priest@alaska.gov

# March 18, 2021

#####      DEMO SCRIPT      ####
# Data are from ADF&G Coho Collections
# Shaul et al. 2019


library(tidyverse)
library(lubridate)

read_csv("data/ADFG_smoltages_AukeBernersHughSmith.csv") %>%
  mutate(Date = ymd(as.POSIXct(Date, format = "%m/%d/%Y", tz = "US/Alaska"))) %>%
  rename("location" = "Location",
         "collectiondate" = "Date",
         "fw_age" = "Age",
         "length_mm" = "Length") %>%
  mutate(location = replace(location, location == "AL", "Auke Lake"),
         location = replace(location, location == "BR", "Berners River"),
         location = replace(location, location == "HS", "Hugh Smith Lake"))


#Now to graph the data 
