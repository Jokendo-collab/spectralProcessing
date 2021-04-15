library(xcms)
library(CAMERA)
library(metaMS)
library(ggfortify)
library(BioVenn)
library(ggplot2)
library(cowplot)
library(readxl)
library(MSnbase)
library(Spectra)
library(RforProteomics)
library(mzR)
library(MSnbase)
library(PSM)

BiocManager::install("RforMassSpectrometry/PSM")
BiocManager::install("PSM")


setwd("C:\\Users\\Javan\\Desktop\\spectralProcessing\\msScansNumbers")

files <- list.files(".",pattern = '*.mzML', full.names = T)
sps_sciex <- Spectra(files, backend = MsBackendMzR())
sps_sciex

msnexp <- readMSData(files)

msnexp

setwd("Z:/2021/Javan/txt_ilifu/")



msdata = filterPrecursorScan(object = "",acquisitionNum = )


spd <- DataFrame(msLevel = c(1L, 2L), rtime = c(1.1, 1.2))
spd$mz <- list(c(100, 103.2, 104.3, 106.5), c(45.6, 120.4, 190.2))
spd$intensity <- list(c(200, 400, 34.2, 17), c(12.3, 15.2, 6.8))
spd

sp <- Spectra(spd)
sp

fl <- tempfile()
export(sp, MsBackendMzR(), file = fl)

fls <- c(tempfile(), tempfile())
export(sp, MsBackendMzR(), file = fls[c(1, 2, 1, 2)])



?`filterPrecursorScan,MsBackend-method`





























