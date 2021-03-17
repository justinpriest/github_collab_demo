# GitHub for Fisheries Scientists
# March 18, 2021
# Justin Priest
# justin.priest@alaska.gov



#####      DEMO SCRIPT      ####
# Data are from ADF&G Coho Collections
# Shaul et al. 2019
# Stock Status and Review of Factors Affecting Coho Salmon 
#   Returns and Escapements in Southeast Alaska
# http://www.adfg.alaska.gov/FedAidPDFs/RIR.1J.2019.12.pdf


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


# Alright! Here we go!

#Now to graph the data 
