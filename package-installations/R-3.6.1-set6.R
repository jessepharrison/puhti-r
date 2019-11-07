# R 3.6.1 PACKAGE SET 6
# Bioconductor packages (Bioconductor version 3.9)

# excludes a small number of Bioconductor packages required as 
# CRAN package dependencies

.libPaths(c("/appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages", .libPaths()))
libpath <- .libPaths()[1]

repo <- 'https://cloud.r-project.org/'

library(devtools)

BiocManager::install("affy", lib = libpath, update = FALSE)
BiocManager::install("oligo", lib = libpath, update = FALSE)
BiocManager::install("airway", lib = libpath, update = FALSE)
BiocManager::install("AnnotationFilter", lib = libpath, update = FALSE)
BiocManager::install("AnnotationForge", lib = libpath, update = FALSE)
BiocManager::install("AnnotationHub", lib = libpath, update = FALSE)
BiocManager::install("BiocGenerics", lib = libpath, update = FALSE)
BiocManager::install("BiocNeighbors", lib = libpath, update = FALSE)
BiocManager::install("BiocStyle", lib = libpath, update = FALSE)
BiocManager::install("bioDist", lib = libpath, update = FALSE)
BiocManager::install("biomaRt", lib = libpath, update = FALSE)

# NOTE: Rhtslib is needed by many other packages.
# Needs bzip2-devel and zlib-devel in USR folder, doesn't listen
# to any custom configure settings! RPM install was needed
# Another note: With Bioconductor 3.10, couldn't find curl.h

BiocManager::install("Rhtslib", lib = libpath, update = FALSE)
BiocManager::install("biovizBase", lib = libpath, update = FALSE)
BiocManager::install("BSgenome.Dmelanogaster.UCSC.dm3", lib = libpath, update = FALSE)
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19", lib = libpath, update = FALSE)

# CRAN package "deconstructSigs" depends on several Bioconductor packages, added here
install_version("deconstructSigs", version = "1.8.0", dependencies = FALSE, lib = libpath, repos = repo) 

BiocManager::install("bumphunter", lib = libpath, update = FALSE)
BiocManager::install("Category", lib = libpath, update = FALSE)
BiocManager::install("cummeRbund", lib = libpath, update = FALSE)
BiocManager::install("DESeq", lib = libpath, update = FALSE)
BiocManager::install("DESeq2", lib = libpath, update = FALSE)
BiocManager::install("destiny", lib = libpath, update = FALSE)
BiocManager::install("DEXSeq", lib = libpath, update = FALSE)
BiocManager::install("FDb.InfiniumMethylation.hg19", lib = libpath, update = FALSE)
BiocManager::install("org.Dm.eg.db", lib = libpath, update = FALSE)
BiocManager::install("TxDb.Dmelanogaster.UCSC.dm3.ensGene", lib = libpath, update = FALSE)
BiocManager::install("fission", lib = libpath, update = FALSE)
BiocManager::install("gage", lib = libpath, update = FALSE)
BiocManager::install("gageData", lib = libpath, update = FALSE)
BiocManager::install("gcrma", lib = libpath, update = FALSE)
BiocManager::install("gdsfmt", lib = libpath, update = FALSE)
BiocManager::install("geneLenDataBase", lib = libpath, update = FALSE)
BiocManager::install("ggbio", lib = libpath, update = FALSE)
BiocManager::install("goseq", lib = libpath, update = FALSE)
BiocManager::install("GSEABase", lib = libpath, update = FALSE)
BiocManager::install("GSVA", lib = libpath, update = FALSE)
BiocManager::install("HSMMSingleCell", lib = libpath, update = FALSE)
BiocManager::install("IRanges", lib = libpath, update = FALSE)
BiocManager::install("KEGGgraph", lib = libpath, update = FALSE)
BiocManager::install("MAST", lib = libpath, update = FALSE)
BiocManager::install("mixOmics", lib = libpath, update = FALSE)
BiocManager::install("monocle", lib = libpath, update = FALSE)
BiocManager::install("MutationalPatterns", lib = libpath, update = FALSE)
BiocManager::install("netbiov", lib = libpath, update = FALSE)
BiocManager::install("pathview", lib = libpath, update = FALSE)
BiocManager::install("PFAM.db", lib = libpath, update = FALSE)
BiocManager::install("ReportingTools", lib = libpath, update = FALSE)
BiocManager::install("ROC", lib = libpath, update = FALSE)
BiocManager::install("SAGx", lib = libpath, update = FALSE)
BiocManager::install("SC3", lib = libpath, update = FALSE)
BiocManager::install("SCnorm", lib = libpath, update = FALSE)
BiocManager::install("seqLogo", lib = libpath, update = FALSE)
BiocManager::install("SingleCellExperiment", lib = libpath, update = FALSE)
BiocManager::install("singscore", lib = libpath, update = FALSE)
BiocManager::install("SIFT.Hsapiens.dbSNP132", lib = libpath, update = FALSE)
BiocManager::install("simpleaffy", lib = libpath, update = FALSE)
BiocManager::install("SNPlocs.Hsapiens.dbSNP.20101109", lib = libpath, update = FALSE)
BiocManager::install("snpStats", lib = libpath, update = FALSE)
BiocManager::install("sva", lib = libpath, update = FALSE)

# packages that need TBB

BiocManager::install("dada2", lib = libpath, update = FALSE)

# packages that need zlib (or hdf5 libs installed using zlib)

BiocManager::install("beachmat", lib = libpath, update = FALSE)
BiocManager::install("biomformat", lib = libpath, update = FALSE)
BiocManager::install("DelayedMatrixStats", lib = libpath, update = FALSE)
BiocManager::install("DiffBind", lib = libpath, update = FALSE)
BiocManager::install("FlowSorted.Blood.450k", lib = libpath, update = FALSE)
BiocManager::install("IlluminaHumanMethylation450kanno.ilmn12.hg19", lib = libpath, update = FALSE)
BiocManager::install("lumi", lib = libpath, update = FALSE)
BiocManager::install("mzR", lib = libpath, update = FALSE)
BiocManager::install("phyloseq", lib = libpath, update = FALSE)
BiocManager::install("scater", lib = libpath, update = FALSE)
BiocManager::install("scran", lib = libpath, update = FALSE)
BiocManager::install("wateRmelon", lib = libpath, update = FALSE)
BiocManager::install("chipseq", lib = libpath, update = FALSE)

# packages that need CRAN package Cairo

BiocManager::install("scde", lib = libpath, update = FALSE)

