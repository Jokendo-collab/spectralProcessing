#Load the library
Library(Spectra)
# Load files
file = "180712_C0_CH_T011B1.mzML"   #File name to be extracted
sps <- Spectra(file, backend = MsBackendMzR())
mqscans = read.table("Z:/2021/Javan/txt_ilifu/evidence.txt",header=T,sep='\t') # load the evidence file
mqscans = subset(mqscans,Raw.file == "180712_C0_CH_T011B1") #Extracting the file with the identified scan numbers
sps <- filterMsLevel(sps, 2L) # Filter the MS2 spectra only
sps_ident <- sps[sps$scanIndex %in% mqscans$MS.MS.scan.number] #Identified spectra
sps_noident <- sps[!sps$scanIndex %in% mqscans$MS.MS.scan.number] #non-identified spectra
export(sps_noident, file = "T011B1_not_identified.mzML",backend = MsBackendMzR()) #Exporting the non-identified spectra
