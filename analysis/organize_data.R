#' ---
#' title: "organize_data.R"
#' author: "Olivia Atkinson"
#' ---

# This script will read in raw data from the input directory, clean it up to produce 
# the analytical dataset, and then write the analytical data to the output directory. 

#source in any useful functions
source("useful_functions.R")
library(readr)

mm_data <- read.table("input/census_region_mm.txt", header = TRUE, sep = ",")
docgender_data <- read.csv("input/doc_gender.csv")

tab <- table(docgender_data$USCPRSEX, docgender_data$REGMEPSRD,
             docgender_data$YEAR)[2:3,,]
tab <- prop.table(tab, c(2,3))
dimnames(tab) <- list(c("Male","Female"),
                      c("NIU","NE","MW","S","W"),
                      2010:2016)
doctor_female <- as.data.frame.table(tab)
colnames(doctor_female) <- c("gender","region","year","percent_female")
doctor_female <- subset(doctor_female, gender=="Female",
                        select=c("region","year","percent_female"))
# 

state_mm <- read_tsv("input/state_mm_year.txt", na=c("","NA","Suppressed"))

state_mm <- subset(state_mm, !is.na(Deaths))

table(state_mm$State, state_mm$Year)
