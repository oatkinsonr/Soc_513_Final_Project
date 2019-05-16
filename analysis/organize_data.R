#' ---
#' title: "organize_data.R"
#' author: "Olivia Atkinson"
#' ---

# This script will read in raw data from the input directory, clean it up to produce 
# the analytical dataset, and then write the analytical data to the output directory. 

#source in any useful functions
source("useful_functions.R")


mm_data <- read.table("census_region_mm.txt", header = TRUE, sep = ",")
docgender_data <- read.csv("doc_gender.csv")

# 

state_mm <- read_tsv("state_mm_year.txt", na=c("","NA","Suppressed"))

state_mm <- subset(state_mm, !is.na(Deaths))

table(state_mm$State, state_mm$Year)
