library(r4projects)
setwd(get_project_wd())
rm(list = ls())
source('1-code/100-tools.R')

###C-18 positive

library(jsonlite)

rplc_positive <- fromJSON("2-data/shuo_han_data/bacteria/ST001688_AN002756.json")

rplc_positive$MS_METABOLITE_DATA$Data

rplc_positive <-
  readr::read_delim("2-data/shuo_han_data/bacteria/ST001688_AN002756_new.txt",
                    delim = "\t")


rplc_positive$`#METABOLOMICS WORKBENCH wdwvt1_20210120_100719 DATATRACK_ID:2407 STUDY_ID:ST001688 ANALYSIS_ID:AN002756`[58]

rplc_positive <-
  rplc_positive[-c(1:57), ]

colnames(rplc_positive) <- as.character(rplc_positive[1,])

rplc_positive <-
  rplc_positive[-1, ]


colnames(rplc_positive)
as.character(rplc_positive[1,])
