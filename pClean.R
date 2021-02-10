setwd("/home/jokendo/pClean")

library(devtools)
library(pClean)

#Label free

# 1. Set parameters then run pClean:
mgffile_1 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T006_FT.mgf"

pCleanGear(mgf=mgffile_1,outdir="jurkat1/result",mem=2,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)


# The resultant MS/MS spectra are written to the ms/ms directory in separate files. To merge all the files, run this:
mergeMGF(dir="jurkat1/result/msms",name="170909_CH_C1_T006_FT.mgf")

#====================================================
mgffile_2 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T007_FT_R2.mgf"

pCleanGear(mgf=mgffile_2,outdir="jurkat2/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat2/result/msms",name="170909_CH_C1_T007_FT_R2.mgf")

#=======================================================

mgffile_3 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T009_FT.mgf"

pCleanGear(mgf=mgffile_3,outdir="jurkat3/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat3/result/msms",name="170909_CH_C1_T009_FT.mgf")
#=========================================================
mgffile_4 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T010_FT_R2.mgf"

pCleanGear(mgf=mgffile_4,outdir="jurkat4/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat4/result/msms",name="170909_CH_C1_T010_FT_R2.mgf")
#========================================================
mgffile_5 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T011_FT_R2.mgf"

pCleanGear(mgf=mgffile_5,outdir="jurkat5/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat5/result/msms",name="170909_CH_C1_T011_FT_R2.mgf")
#==========================================================
mgffile_6 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T013_FT.mgf"

pCleanGear(mgf=mgffile_6,outdir="jurkat6/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat6/result/msms",name="170909_CH_C1_T013_FT.mgf")
#=============================================================
mgffile_7 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T014_FT_R2.mgf"

pCleanGear(mgf=mgffile_7,outdir="jurkat7/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat7/result/msms",name="170909_CH_C1_T014_FT_R2.mgf")
#=================================================================
mgffile_8 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T015_FT.mgf"

pCleanGear(mgf=mgffile_8,outdir="jurkat8/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat8/result/msms",name="170909_CH_C1_T015_FT.mgf")
#=================================================================
mgffile_9 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T025_FT.mgf"

pCleanGear(mgf=mgffile_9,outdir="jurkat9/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat9/result/msms",name="170909_CH_C1_T025_FT.mgf")
#=================================================================
mgffile_10 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T026_FT.mgf"

pCleanGear(mgf=mgffile_10,outdir="jurkat10/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat10/result/msms",name="170909_CH_C1_T026_FT.mgf")
#================================================================
mgffile_11 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T027_FT_R2.mgf"

pCleanGear(mgf=mgffile_11,outdir="jurkat11/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat11/result/msms",name="170909_CH_C1_T027_FT_R2.mgf")
#=================================================================
mgffile_12 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T037_FT.mgf"

pCleanGear(mgf=mgffile_12,outdir="jurkat12/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat12/result/msms",name="170909_CH_C1_T037_FT.mgf")
#=================================================================
mgffile_13 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T042_FT.mgf"

pCleanGear(mgf=mgffile_13,outdir="jurkat13/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat13/result/msms",name="170909_CH_C1_T042_FT.mgf")
#=================================================================
mgffile_14 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T049_FT.mgf"

pCleanGear(mgf=mgffile_14,outdir="jurkat14/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat14/result/msms",name="170909_CH_C1_T049_FT.mgf")
#====================================================================
mgffile_15 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T051_FT_R2.mgf"

pCleanGear(mgf=mgffile_15,outdir="jurkat15/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat15/result/msms",name="170909_CH_C1_T051_FT_R2.mgf")
#===================================================================
mgffile_16 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T052_FT.mgf"

pCleanGear(mgf=mgffile_16,outdir="jurkat16/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat16/result/msms",name="170909_CH_C1_T052_FT.mgf")
#=====================================================================
mgffile_17 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T053_FT.mgf"

pCleanGear(mgf=mgffile_17,outdir="jurkat17/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat17/result/msms",name="170909_CH_C1_T053_FT.mgf")
#===================================================================
mgffile_18 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T054_FT.mgf"

pCleanGear(mgf=mgffile_18,outdir="jurkat18/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat18/result/msms",name="170909_CH_C1_T054_FT.mgf")
#====================================================================
mgffile_19 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T061_FT_R2.mgf"

pCleanGear(mgf=mgffile_19,outdir="jurkat19/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat19/result/msms",name="170909_CH_C1_T061_FT_R2.mgf")
#===================================================================
mgffile_20 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T062_FT_R2.mgf"

pCleanGear(mgf=mgffile_20,outdir="jurkat20/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat20/result/msms",name="170909_CH_C1_T062_FT_R2.mgf")
#===================================================================
mgffile_21 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T064_FT_R2.mgf"

pCleanGear(mgf=mgffile_21,outdir="jurkat21/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat21/result/msms",name="170909_CH_C1_T064_FT_R2.mgf")
#===================================================================

mgffile_22 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T069_FT_R2.mgf"

pCleanGear(mgf=mgffile_22,outdir="jurkat22/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat22/result/msms",name="170909_CH_C1_T069_FT_R2.mgf")
#===================================================================
mgffile_23 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T073_FT_R2.mgf"

pCleanGear(mgf=mgffile_23,outdir="jurkat23/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat23/result/msms",name="170909_CH_C1_T073_FT_R2.mgf")
#===================================================================

mgffile_24 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T075_FT.mgf"

pCleanGear(mgf=mgffile_24,outdir="jurkat24/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat24/result/msms",name="170909_CH_C1_T075_FT.mgf")
#===================================================================

mgffile_25 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T077_FT.mgf"

pCleanGear(mgf=mgffile_25,outdir="jurkat25/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat25/result/msms",name="170909_CH_C1_T077_FT.mgf")
#===================================================================

mgffile_26 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T080_FT.mgf"

pCleanGear(mgf=mgffile_26,outdir="jurkat26/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat26/result/msms",name="170909_CH_C1_T080_FT.mgf")
#===================================================================

mgffile_27 <- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T084_FT_R2.mgf"

pCleanGear(mgf=mgffile_27,outdir="jurkat27/result",mem=16,cpu=0,mionFilter=TRUE,isoReduction=TRUE,
           chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)

mergeMGF(dir="jurkat27/result/msms",name="170909_CH_C1_T084_FT_R2.mgf")
#===================================================================


# mgffile<- "/home/jokendo/pClean/mgftrainingdata/170909_CH_C1_T084_FT_R2.mgf"
# 
# pCleanGear(mgf=mgffile,outdir="jurkat/result",mem=2,cpu=0,mionFilter=TRUE,
#            isoReduction=TRUE,chargeDeconv=TRUE,largerThanPrecursor=TRUE,ionsMerge=TRUE,network=TRUE,debug=FALSE)
# 
# mergeMGF(dir="jurkat/result/msms",name="170909_CH_C1_T084_FT_R2.mgf")















