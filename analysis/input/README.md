# Input Directory

This directory should contain unedited data files directly from the source. I typically put different data sources into different sub-directories and include any relevant data documentation in the same directory. 

Following the guidelines of [Code and Data](https://web.stanford.edu/~gentzkow/research/CodeAndData.xhtml#magicparlabel-270), this directory is dedicated to raw data from other sources ONLY. Datasets in this input directory should NEVER be edited. If newer data extracts are used, older raw data should just be replaced and changes commmitted. Constructed datasets should NEVER be placed in this directory. 

## Dataset 1
# This data is from the CDC WONDER database. This data is the maternal mortality rate by census region from the years 2010-2017. 

# The first link is to the CDC WONDER website. This page lists topics and subtopics. From here you should go to the "Mortality" topic and under the "Underlying Cause of Death" subtopic click "Detailed Mortality". 
https://wonder.cdc.gov 

# This will take you to this link, where you have to read an agreement regarding the confidentiality of the data and how the data obtained should be used. Click "Agree" at the bottom of the page. 
https://wonder.cdc.gov/ucd-icd10.html 

# After clicking "Agree" it will take you to a request page full of drop-down menus where you select different options about how you want to data displayed and what kind of information you want included in the data. In section 1, "Organize Table Layout", select "Census Region" and "Year" in the "Group Results By" drop-down menu. In section 2, "Select Location" select "Census Regions" and select all regions. Then click "2013 Urbanization" and choose "All categories". In section 3, "Select Demographics", leave everything as the default settings. In section 4, "Select Year and Month", select "All dates." In section 5, "Select weekday, autopsy, and place of death" leave everything as default settings. In section 6, "Select cause of death", select ICD-10 codes and from those codes add code "O00-O99 (Pregnancy, Childbirth, and the puerperium)". In section 7, "Other options", click "Show Totals". 
https://wonder.cdc.gov/controller/datarequest/D76 

# That takes you to this link where all the data is listed and can be exported as a text file. 
https://wonder.cdc.gov/controller/datarequest/D76;jsessionid=6F27BBE5C8195F702FB66F03D5121DF3 


## Dataset 2 
# This data is from the CDC WONDER database. This data is the natality rate by census region from the years 2010-2017. 

# The first link is to the CDC WONDER website. This page lists topics and subtopics. From here you should go to the "Births" topic. Click and it will take you to this page:
https://wonder.cdc.gov/natality.html 

#From this page, click "Natality for 2007-2017". This will take you to this link, where you have to read an agreement regarding the confidentiality of the data and how the data obtained should be used. Click "Agree" at the bottom of the page. 
https://wonder.cdc.gov/ucd-icd10.html 

# After clicking "Agree" it will take you to a request page full of drop-down menus where you select different options about how you want to data displayed and what kind of information you want included in the data. In section 1, "Organize Table Layout", select "Census Region" and "Year" in the "Group Results By" drop-down menu. In section 2, "Select Location" select "Census Regions" and select all regions. In section 2a and 3, leave everything as the default settings. In section 4, "Select Birth Characteristics", under "Years" select the years 2010-2017. Leave all the other default settings the same. In section 5, leave everything as default settings. In section 6, click "Show Totals", "Show Zero Values", and "Show Supressed Values." After this, press "Send."
https://wonder.cdc.gov/controller/datarequest/D66 

#Aftering pressing send, you will be taken to the results page:
https://wonder.cdc.gov/controller/datarequest/D66;jsessionid=773E3F8ECF676010B13B8833DD27A8BB


## Dataset 3 
# This data is from the IPUMS Health Surveys. From the IPUMS homepage (https://www.ipums.org/) click on the "IPUMS Health Surveys". This will take you to the Health Surveys homepage (https://www.ipums.org/healthsurveys.shtml). From here, click on the MEPS (Medical Expenditure Panel Survey) "Get Data" button. 

#You will be redirected to another page (https://meps.ipums.org/meps/). From here, under "Create an Extract", click "Get Data". Under "Select Variables" in the "Annual" section, choose "Access to Care". From here choose the variable "Usual medical care provider is male or female." In the "Round" section under "Select Variables" choose "Demographic." Select the variables "Census Region".

#After selecting all your variables, click "Select Samples". You will be directed to another pages (https://meps.ipums.org/meps-action/samples). From here click the years 2010-2017. Now, go to your Data Cart and click "View Cart". All your variables will appear. Click "Create Extract" then "Submit Extract" (https://meps.ipums.org/meps-action/extract_requests/download). 

