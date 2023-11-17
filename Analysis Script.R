###################################################################
###################################################################
## Setup
###################################################################
# R version 4.3.1

# https://bioconductor.org/install/
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()

BiocManager::install(c("GEOquery"), force = TRUE)


library("GEOquery")    # v. 2.68.0
library("tidyverse")   # v. 2.0.0


###################################################################
## Functions
"%!in%" <- function(x,y)!('%in%'(x,y))


###################################################################
## Access Transcriptomics Datasets Available in GEO

# https://genomicsclass.github.io/book/pages/GEOquery.html
td_01 <- getGEO("GSE2770", GSEMatrix = TRUE)
td_02 <- getGEO("GSE22045", GSEMatrix = TRUE)
td_03 <- getGEO("GSE22886", GSEMatrix = TRUE)
td_04 <- getGEO("GSE24634", GSEMatrix = TRUE)
td_05 <- getGEO("GSE30664", GSEMatrix = TRUE)
td_06 <- getGEO("GSE42569", GSEMatrix = TRUE)
td_07 <- getGEO("GSE43005", GSEMatrix = TRUE)
td_08 <- getGEO("GSE43769", GSEMatrix = TRUE)
td_09 <- getGEO("GSE50175", GSEMatrix = TRUE)
td_10 <- getGEO("GSE60679", GSEMatrix = TRUE)
td_11 <- getGEO("GSE56649", GSEMatrix = TRUE)
td_12 <- getGEO("GSE43591", GSEMatrix = TRUE)
td_13 <- getGEO("GSE93170", GSEMatrix = TRUE)

# number of datasets
length(td_01)

# dimentions of each dataset
pData(td_01[[1]]) %>% dim()

# access the first 6 rows of the dataset
pData(td_01[[1]]) %>% head()





