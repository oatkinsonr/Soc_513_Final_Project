# Input Directory

This directory should contain unedited data files directly from the source. I typically put different data sources into different sub-directories and include any relevant data documentation in the same directory. 

Following the guidelines of [Code and Data](https://web.stanford.edu/~gentzkow/research/CodeAndData.xhtml#magicparlabel-270), this directory is dedicated to raw data from other sources ONLY. Datasets in this input directory should NEVER be edited. If newer data extracts are used, older raw data should just be replaced and changes commmitted. Constructed datasets should NEVER be placed in this directory. 

# Dataset 1
# This data is from the CDC WONDER database. WONDER is an acronymn for Wide-ranging Online Data for Epidemiologic Research and provides public health data and information to the public. This data is the maternal mortality rate by census region from the years 1999-2017. 

# The first link is to the CDC WONDER website. This page lists topics and subtopics. From here you should go to the "Mortality" topic and under the "Underlying Cause of Death" subtopic click "Detailed Mortality". 
https://wonder.cdc.gov 

# This will take you to this link, where you have to read an agreement regarding the confidentiality of the data and how the data obtained should be used. Click "Agree" at the bottom of the page. 
https://wonder.cdc.gov/ucd-icd10.html 

# After clicking "Agree" it will take you to a request page full of drop-down menus where you select different options about how you want to data displayed and what kind of information you want included in the data. In section 1, "Organize Table Layout", select "Census Region" and "Year" in the "Group Results By" drop-down menu. In section 2, "Select Location" select "Census Regions" and select all regions. Then click "2013 Urbanization" and choose "All categories". In section 3, "Select Demographics", leave everything as the default settings. In section 4, "Select Year and Month", select "All dates." In section 5, "Select weekday, autopsy, and place of death" leave everything as default settings. In section 6, "Select cause of death", select ICD-10 codes and from those codes add code "O00-O99 (Pregnancy, Childbirth, and the puerperium)". In section 7, "Other options", click "Show Totals". 
https://wonder.cdc.gov/controller/datarequest/D76 

# That takes you to this link where all the data is listed and can be exported as a text file. 
https://wonder.cdc.gov/controller/datarequest/D76;jsessionid=6F27BBE5C8195F702FB66F03D5121DF3 