# Ask for the arguments required to use the script
newWD <- readline("Directory's absolute path where the mzML files are: ")
reportName <- readline("Name for the CSV report file: ")
while (TRUE){
    polarity <- tolower(readline("Polarity mode of input files (positive/negative): "))
    if (polarity %in% c('p', 'pos', 'positive', 'n', 'neg', 'negative')){
        break
    }
}
while (TRUE){
    rmIsotopes <- tolower(readline("Remove isotopes from aligned data? [y/n] "))
    if (rmIsotopes %in% c('y', 'yes', 'n', 'no')){
        rmIsotopes = startsWith(rmIsotopes, 'y')
        break
    }
}

# Set working directory
setwd(newWD)

# Turn off warning messages whilst checking and installing packages
options(warn = -1)
# Check if any required package is missing and, if so, install it
# bioPackages <- c("xcms", "CAMERA")
# toInstall <- bioPackages[!(bioPackages %in% installed.packages()[,"Package"])]
# if (length(toInstall)) {
#     source("https://bioconductor.org/biocLite.R")
#     biocLite(toInstall)
# }
# packages <- c("caTools", "readr", "dplyr")
# toInstall <- packages[!(packages %in% installed.packages()[,"Package"])]
# if (length(toInstall)) {
#     install.packages(toInstall)
# }
# Load required packages
library(CAMERA)
library(xcms)
library(caTools)
library(readr)
library(dplyr)
# Turn on warning messages again
options(warn = 0)

checkFile <- function(file) {
    # Check if there is any problem in the mzML file that would raise an error
    # when using XCMS and repair it
    cat(paste("\nLoading File: ", file, sep = ""))
    fileExt <- ".mzML"
    xr <- xcmsRaw(file, profstep = 0)
    for (i in 1 : length(xr@scanindex)) {
        scan <- getScan(xr, scan = i)
        if (is.unsorted(scan[, "mz"]) == TRUE){
            newfile <- sub(fileExt, "-Fixed.mzdata", file, ignore.case = TRUE)
            write.mzdata(xr, newfile)
            file.copy(file, sub(fileExt, ".OLD", file, ignore.case = TRUE))
            unlink(file)
            break
        }
    }
    # Print "O" if the file is correct, "x" if the file has been modified
    if (i == length(xr@scanindex)) {
        cat(" O")
    } else {
        cat(" x")
    }
    # From the documentation: "... it can be useful to call gc() after a large
    # object has been removed, as this may prompt R to return memory to the OS."
    rm(list = ls())
    gc()
}

# Check every mzML file in the current working directory
fileList <- list.files(recursive = TRUE, pattern = "mzML", ignore.case = TRUE,
                       full.names = TRUE)
sapply(fileList, checkFile)
cat("\n\n")

# Process files with XCMS:
# Peak picking using Wavelet algorithm for peak detection (centWave)
xset <- xcmsSet(method = "centWave", ppm = 10, peakwidth = c(10, 120),
                snthresh = 5, prefilter = c(10, 20000), integrate = 1,
                mzdiff = 0.001, fitgauss = FALSE, noise = 20000,
                scanrange = c(1, 11485))
# Peak alignment
xset <- group(xset, bw = 30, mzwid = 0.005, minfrac = 0.5, minsamp = 1)
# Retention time (RT) correction
xset <- retcor(xset, method = "obiwarp", profStep = 0.1, response = 20,
               center = 1, plottype = "none")
# Re-alignment
xset <- group(xset, bw = 3, mzwid = 0.005, minfrac = 0.5, minsamp = 1)
# Fill in missing peak data
xset <- fillPeaks(xset)

# Detect isotopes
# Create an xsAnnotate object and group peaks by retention time
an <- xsAnnotate(xset)
an <- groupFWHM(an)
# Annotate isotopes
an <- findIsotopes(object=an, maxcharge=2, maxiso=4, ppm=10, mzabs=0.001,
                   minfrac=0.5)
# Get peaklist with annotated peaks
peakTable <- getPeaklist(an)

# Generate the report file with the most significant differences between two
# sets of samples, or all aligned peaks if there is only one set of samples
sampleClasses <- list.dirs(path = ".", full.names = FALSE, recursive = FALSE)
numSampleClasses <- length(sampleClasses)
# Write the report with the results
if (numSampleClasses == 2) {
    reporttab <- diffreport(xset, sampleClasses[1], sampleClasses[2],
                            filebase = reportName)
} else if (numSampleClasses < 2) {
    reporttab <- peakTable(xset, filebase = reportName)
} else {
    stop("Unexpected number of sample classes (greater than 2).")
}

# Convert the TSV report file into CSV, adding "id" as name of the first column
tsvFile <- read_tsv(paste0(reportName, ".tsv"))
colnames(tsvFile)[1] <- "id"
# Add isotope information to report file
tsvFile <- left_join(tsvFile, peakTable[, c('mz', 'isotopes')],
                     by=c('mzmed' = 'mz'))
tsvFile$isotopes[is.na(tsvFile$isotopes)] <- ''
if (rmIsotopes){
    # Remove isotopes
    tsvFile <- filter(tsvFile, !grepl("\\[M\\+", isotopes))
}
write_csv(tsvFile, paste0(reportName, ".csv"))
file.remove(paste0(reportName, ".tsv"))


## kitengela medical
## pona
## 



