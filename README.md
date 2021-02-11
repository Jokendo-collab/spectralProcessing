# Introduction
This repository contains the information used in pre-processing of the MS/MS spectra and how this can be used to improve the identification of non-human peptides from the raw files.

## Experimental procedure
- [x] Remove low quality and spectra that are unassigned/ non-informative. The non-informative spectra were removed by use of pClean bioconductor tool.
- [x] Identify human peptides (proteins from the classical analysis)
- [x] Identify non-human peptides (proteins)
- [x] Carry out open modification search (Including both human and non-human protein peptides)
- [x] Identify non-peptide compounds (metabolites) from singuly charged spectra
- [x] Re-callibrate the overall assignment rate based on the sum of the above, relative to the total number of high quality non-redudant spectra.
- [x] The clearance of uninformative MS/MS signals was done using pClean [tool](https://pubs.acs.org/doi/pdf/10.1021/acs.jproteome.9b00141?rand=ztz0p6rs). This was done to remove the low quality and redudant spectra from the RAW files prior to the standard database search.
-------------------------------------------------------------------------------------------------------------------------------------
## Identification of human and non-human peptides
This was done using the MSfragger version (V 3.1.1)
