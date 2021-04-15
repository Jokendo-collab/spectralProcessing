# if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
setwd("Z:\\2021\\Javan\\scanNumberExtraction")
library(mzR)
library(rpx)
library(msdata)
library(ProtGenerics)
library(MsCoreUtils)
library(QFeatures)
library(PSM)
library(Spectra)
library(BioVenn)

evidence = read.table("C:\\Users\\Javan\\Desktop\\spectralProcessing\\txt_ilifu/evidence.txt",header = T,sep = "\t")

mqscans = read.table("scanNumbers.txt",header = T,sep = '\t')



























