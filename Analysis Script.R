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

library(GEOquery)    # v. 2.68.0


###################################################################
## Functions


###################################################################
## Access Transcriptomics Datasets Available in GEO
# https://genomicsclass.github.io/book/pages/GEOquery.html

a <- getGEO("GSE2770", GSEMatrix = TRUE)




