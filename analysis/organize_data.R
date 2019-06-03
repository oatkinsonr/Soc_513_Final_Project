#' ---
#' title: "organize_data.R"
#' author: "Olivia Atkinson"
#' ---

# This script will read in raw data from the input directory, clean it up to produce 
# the analytical dataset, and then write the analytical data to the output directory. 

#source in any useful functions
source("useful_functions.R")
library(readr)

## Maternal Mortality Data

# Maternal Mortality by Census Region 
mm_data <- read_delim("input/census_region_mm.txt", delim = "\t",
                      n_max = 37)
mm_data <- subset(mm_data, is.na(Notes))

table(mm_data$`Census Region Code`, mm_data$Year, exclude=NULL)

mm_data$region <- factor(ifelse(mm_data$`Census Region Code`=="CENS-R1", "NE",
                         ifelse(mm_data$`Census Region Code`=="CENS-R2", "MW",
                                ifelse(mm_data$`Census Region Code`=="CENS-R3", "S", "W"))))
table(mm_data$region, mm_data$`Census Region Code`, exclude=NULL)

mm_data <- subset(mm_data, 
                  select=c("region","Year","Deaths"))
colnames(mm_data) <- c("region","year","deaths")

#Births by Census Region 
birth_data <- read_delim("input/region_natality.txt", delim = "\t",
                      n_max = 37)
birth_data <- subset(birth_data, is.na(Notes))

table(birth_data$`Census Region Code`, birth_data$Year, exclude=NULL)

birth_data$region <- factor(ifelse(birth_data$`Census Region Code`=="CENS-R1", "NE",
                                ifelse(birth_data$`Census Region Code`=="CENS-R2", "MW",
                                       ifelse(birth_data$`Census Region Code`=="CENS-R3", "S", "W"))))
table(birth_data$region, birth_data$`Census Region Code`, exclude=NULL)

birth_data <- subset(birth_data, 
                  select=c("region","Year","Births"))
colnames(birth_data) <- c("region","year","births")

#Creating the Maternal Mortality Ratio
mm <- merge(mm_data, birth_data)
mm$mmr <- (mm$deaths/mm$births)

----------------------------------------------------------------------------------------
#Doctor Gender Data 
docgender_data <- read.csv("input/doc_gender.csv")

tab <- table(docgender_data$USCPRSEX, docgender_data$REGMEPSRD,
             docgender_data$YEAR)[2:3,,]
tab <- prop.table(tab, c(2,3))
dimnames(tab) <- list(c("Male","Female"),
                      c("NIU","NE","MW","S","W"),
                      2010:2016)
doctor_female <- as.data.frame.table(tab)
colnames(doctor_female) <- c("gender","region","year","percent_female")
doctor_female <- subset(doctor_female, gender=="Female" & region!="NIU",
                        select=c("region","year","percent_female"))







