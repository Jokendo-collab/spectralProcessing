setwd("Z:/2021/Javan/scanNumberExtraction") #Set working directory
#====================================================
#Load the library
library(Spectra)
library(mzR)
library(msdata)
library(ProtGenerics)
library(rpx)
library(QFeatures)
library(Spectra)
library(MsCoreUtils)
library(PSM)
library(MSnbase)
#=====================================================
# Load files
file = "180712_C0_CH_T011B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T011B1")

#==========================================================
## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T011B1_not_identified.mzML",backend = MsBackendMzR())

#==================================================================
# Load files
file = "180712_C0_CH_T013BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T013BCG")

#==========================================================
## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T013BCG_not_identified.mzML",backend = MsBackendMzR())
#==========================================================

# Load files
file = "180712_C0_CH_T013P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T013P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T013PPD_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180712_C0_CH_T014B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T014B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T014B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T014P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T014P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T014PPD_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T032P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T032P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T032PPD_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T033B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T033B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T033B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T033BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T033BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T033BCG_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180712_C0_CH_T033P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T033P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T033PPD_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T035B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T035B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T035B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T035BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T035BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T035BCG_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T051B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T051B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T051B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180712_C0_CH_T080BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T080BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T080BCG_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T090B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T090B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T090B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T090BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T090BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T090BCG_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T090P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T090P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T090PPD_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T095B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T095B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T095B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180712_C0_CH_T095BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T095BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T095BCG_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T101B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T101B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T101B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180712_C0_CH_T101BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T101BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T101BCG_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T101P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T101P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T101PPD_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180712_C0_CH_T104B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T104B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T104B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180712_C0_CH_T108B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T108B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T108B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180731_C0_CH_T011BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T011BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T011BCG_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180731_C0_CH_T011P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T011P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T011PPD_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180731_C0_CH_T013B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T013B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T013B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180731_C0_CH_T014BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T014BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T014BCG_not_identified.mzML",backend = MsBackendMzR())

#===========================================================
# Load files
file = "180731_C0_CH_T016B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T016B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T016B1_not_identified.mzML",backend = MsBackendMzR())

#===========================================================

# Load files
file = "180731_C0_CH_T016BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T016BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T016BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T016P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T016P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T016PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T027B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T027B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T027B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================

# Load files
file = "180731_C0_CH_T027BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T027BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T027BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T027P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T027P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T027PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T032B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T032B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T032B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T032BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T032BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T032BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T035P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T035P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T032PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T047B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T047B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T047B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T047BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T047BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T047BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T047P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T047P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T047PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T051BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T051BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T051BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T051P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T051P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T051PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T080B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T080B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T080B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T080P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T080P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T080PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T095P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T095P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T095PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================

# Load files
file = "180731_C0_CH_T104BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T104BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T104BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T104P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T104P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T104PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "180731_C0_CH_T108BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T108BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T108BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================

# Load files
file = "180731_C0_CH_T108P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "180731_C0_CH_T108P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T108PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C1_CH_T107BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C1_CH_T107BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T107BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C1_CH_T107P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C1_CH_T107P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T107PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C1_CH_T163BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C1_CH_T163BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T163BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================

# Load files
file = "191025_C1_CH_T164BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C1_CH_T164BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T164BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C1_CH_T165B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C1_CH_T165B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T165B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================

# Load files
file = "191025_C1_CH_T165BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C1_CH_T165BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T165BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================

# Load files
file = "191025_C1_CH_T173B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C1_CH_T173B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T173B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C1_CH_T176B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C1_CH_T176B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T176B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C1_CH_T176BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C1_CH_T176BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T176BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C2_CH_T142BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C2_CH_T142BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T142BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================

# Load files
file = "191025_C2_CH_T142P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C2_CH_T142P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T142PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C2_CH_T163B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C2_CH_T163B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T163B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C2_CH_T166BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C2_CH_T166BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T166BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C2_CH_T166BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C2_CH_T166BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T166BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C2_CH_T173BCG.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C2_CH_T173BCG")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T173BCG_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191025_C3_CH_T107B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191025_C3_CH_T107B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T107B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191031_C1_CH_T164P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191031_C1_CH_T164P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T164PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191031_C1_CH_T165P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191031_C1_CH_T165P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T165PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191031_C1_CH_T173P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191031_C1_CH_T173P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T173PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191031_C1_CH_T176P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191031_C1_CH_T176P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T176PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191031_C3_CH_T163P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191031_C3_CH_T163P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T163PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191031_C3_CH_T164B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191031_C3_CH_T164B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T164B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191031_C3_CH_T166B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191031_C3_CH_T166B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T166B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================

# Load files
file = "191031_C3_CH_T166P.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191031_C3_CH_T166P")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T166PPD_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
# Load files
file = "191104_C1_CH_T142B1.mzML"
sps <- Spectra(file, backend = MsBackendMzR())
sps
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file

mqscans = subset(mqscans,Raw.file == "191104_C1_CH_T142B1")

## Optionally filter to MS2 spectra only - don't know if that's needed/required in your case
sps <- filterMsLevel(sps, 2L)
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number]
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number]

export(sps_noident, file = "T142B1_not_identified.mzML",backend = MsBackendMzR())
#===========================================================
























































