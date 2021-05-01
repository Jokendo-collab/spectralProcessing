setwd("Z:\\2021\\Javan\\singlyChargedmzMLmetabolomics")
library(remotes)
library(BiocManager)
library(xcms)
library(metaX)
library(faahKO)
library(RColorBrewer)
library(pander)
library(magrittr)
library(pheatmap)
library(SummarizedExperiment)
library(CAMERA)


# Reading in raw data files
# create vector containing list of filenames
# for users, make sure it's a folder containing only necessary files
# set pattern = NULL
mzmls <- dir(path = ".", full.names = TRUE, recursive = TRUE)

pd <- data.frame(sample_name = sub(basename(mzmls), pattern = ".mzML",
                                   replacement = "", fixed = TRUE),
                 sample_group = c(rep("ltb_bcg", 6), rep("ltb_bl", 6),rep("ltb_ppd",6),rep("ptb_bcg", 6),rep("ptb_bl", 6),
                                  rep("ptb_ppd",6),rep("rtb_bcg",6),rep("rtb_bl",6),rep("rtb_ppd",6),rep("sim_bcg",6),rep("sim_bl",6),rep("sim_ppd",6)),
                 stringsAsFactors = FALSE)

raw_data <- readMSData(files = mzmls, pdata = new("NAnnotatedDataFrame", pd),
                       mode = "onDisk")

filed = filterMsLevel(raw_data, msLevel = 1L) # Filter the ms1 spectra
# Plotting functions to see entire chromatogram
# bpis <- chromatogram(raw_data, aggregationFun = "max")
# tics <- chromatogram(raw_data, aggregationFun = "sum")
#
# group_colors <- paste0(brewer.pal(3, "Set1")[1:2], "60")
# names(group_colors) <- c("UC", "nonIBD")
#
# plot(bpis, col = group_colors[raw_data$sample_group])
# plot(tics, col = group_colors[raw_data$sample_group])

# Start XCMS
# First filter by retention time
# User inputs: numeric, c(min, max) in seconds.

filt_data <- filterRt(raw_data, rt = c(2, 250))


# Chromatographic peak detection
# CentWaveParam can also take ppm (default is ppm = 25) but gives out warning
# User inputs: peakwidth(min, max), noise and ppm
# can ignore error (Error in x$.self$finalize() : attempt to apply non-function)
cwp <- CentWaveParam(peakwidth = c(10, 60), noise = 5000, ppm = 5)
xdata <- findChromPeaks(raw_data, param = cwp) # S4 object with peak data

# Perform Alignment, group then rt then group
# User inputs: minFractio, minSamples, bw
gdp <- PeakDensityParam(sampleGroups = xdata$sample_group, minFraction = 0.5, minSamples = 1, bw = 3)
# Grouping first, takes "long"
grouped_xdata <- groupChromPeaks(xdata, param = gdp)

# Retention time
# User inputs?
xdata <- adjustRtime(xdata, param = ObiwarpParam(binSize = 0.6))



# Grouping again
grouped_xdata <- groupChromPeaks(xdata, param = gdp)

register(SerialParam())
# Fill in missing peaks
filled <- fillChromPeaks(grouped_xdata)

fil = filterMsLevel(filled, msLevel = 1L) # Filter the ms1 spectra

# Convert xcms object
xset <- as(fil, "xcmsSet")

# Now use CAMERA to refine peaks
# Create an xsAnnotate object
xsa <- xsAnnotate(xset)

# Group after RT value of the xcms grouped peak
# User input?
xsaF <- groupFWHM(xsa, perfwhm = 0.6)

# Annotate isotopes, this could be done before groupCorr
xsaFI <- findIsotopes(xsaF)

# Verify grouping
# Takes a long time...
xsaC <- groupCorr(xsaFI)

# Annotate adducts
# Also takes a "long" time
xsaFA <- findAdducts(xsaC, polarity = "negative")

# Write original CAMERA output
write.csv(getPeaklist(xsaFA), file = 'CAMERA_output.csv')

## Edit peak list to add sample names
camera_output <- getPeaklist(xsaFA)

# first get original sample names
sample_names <- xsaFA@xcmsSet@phenoData[[1]]
sample_names_ed <- gsub(".mzML", "", sample_names)

# adjust original sample names
length <- ncol(camera_output)
end <- length-3
camnames <- colnames(camera_output)
camnames[10:end] <- sample_names_ed

colnames(camera_output) <- camnames

write.csv(camera_output, "CAMERA_output_named.csv")

## Now edit table for MetaboAnalyst downstream

scanrange_min <- 300
camera_filt <- subset(camera_output, camera_output$rt > scanrange_min)

camera_ma <- camera_filt[,-length]

# first delete isotopes, keeping [M]- if negative, [M]+ if positive
# second delete adducts, keeping [M-H]- if negative, [M+H]+ if positive
# third keep all with blank isotope/adduct

camera_isotopes <- camera_ma[grepl("\\[M\\]-", camera_ma$isotopes),]
camera_adducts <- camera_ma[grepl("\\[M-H\\]-", camera_ma$adduct),]
camera_feats <- camera_ma[(camera_ma$isotopes == "" & camera_ma$adduct == ""),]

unique_feats <- unique(rbind(camera_isotopes, camera_adducts, camera_feats))

feats_info <- unique_feats[,10:end]
group_info <- xsaFA@xcmsSet@phenoData[[2]]
combo_info <- rbind(group_info,feats_info)
mzs <- data.frame(c("Label", unique_feats[,1]))
colnames(mzs) <- "Sample"
ma_feats <- cbind(mzs, combo_info)

write.csv(ma_feats, "MetaboAnalyst_input.csv", row.names = FALSE)
#save.image(file="metaboanalyst_workflow_feb13_2019.RData")






























