# R 3.6.1 PACKAGE SET 3 
# CRAN packages, top of the food chain

.libPaths(c("/appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages", .libPaths()))
libpath <- .libPaths()[1]

repo <- 'https://cloud.r-project.org/'

library(devtools)

# A

install_version("ade4", version = "1.7-13", dependencies = FALSE, lib = libpath, repos = repo) 
# adegenet needs ‘shiny’, ‘seqinr’, ‘spdep’, others installed before but add seqinr here
install_version("seqinr", version = "3.4-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("akima", version = "0.6-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("amap", version = "0.8-17", dependencies = FALSE, lib = libpath, repos = repo)
install_version("analogue", version = "0.17-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ape", version = "5.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("arm", version = "1.10-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive", version = "0.3-5", dependencies = FALSE, lib = libpath, repos = repo)

# B

install_version("base64", version = "2.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("BatchJobs", version = "1.8", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bazar", version = "1.0.11", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bfast", version = "1.5.7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bibtex", version = "0.4.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("biglm", version = "0.9-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bigmemory", version = "4.5.33", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bindrcpp", version = "0.2.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("biomod2", version = "3.3-7.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("blockmodeling", version = "0.3.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bookdown", version = "0.11", dependencies = FALSE, lib = libpath, repos = repo)
install_version("BradleyTerry2", version = "1.1-0", dependencies = FALSE, lib = libpath, repos = repo)

# C

install_version("car", version = "3.0-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("caret", version = "6.0-84", dependencies = FALSE, lib = libpath, repos = repo)
install_version("clue", version = "0.3-57", dependencies = FALSE, lib = libpath, repos = repo)
install_version("clusterGeneration", version = "1.3.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("clv", version = "0.3-2.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("coin", version = "1.3-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("cowplot", version = "0.9.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("crosstalk", version = "1.0.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("cubature", version = "2.0.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("CVST", version = "0.2-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("cvTools", version = "0.3.2", dependencies = FALSE, lib = libpath, repos = repo)

# D

install_version("ddalpha", version = "1.3.9", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dendextend", version = "1.12.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("DetSel", version = "1.0.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("downloader", version = "0.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("DiagrammeR", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("doFuture", version = "0.8.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("DRR", version = "0.0.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dimRed", version = "0.2.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("diveRsity", version = "1.9.90", dependencies = FALSE, lib = libpath, repos = repo)
install_version("DMwR", version = "0.4.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("doParallel", version = "1.0.14", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dtplyr", version = "0.0.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dtw", version = "1.20-1", dependencies = FALSE, lib = libpath, repos = repo)

# E

install_version("effects", version = "4.1-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("expm", version = "0.999-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("extrafont", version = "0.17", dependencies = FALSE, lib = libpath, repos = repo)

# F

install_version("fail", version = "1.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fBasics", version = "3042.89", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ff", version = "2.2-14", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fields", version = "9.8-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fitdistrplus", version = "1.0-14", dependencies = FALSE, lib = libpath, repos = repo)
install_version("flexmix", version = "2.3-15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("futile.logger", version = "1.4.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("future", version = "1.14.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("future.apply", version = "1.3.0", dependencies = FALSE, lib = libpath, repos = repo)

# G

install_version("gam", version = "1.16.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gbm", version = "2.1.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("geiger", version = "2.0.6.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("geoR", version = "1.7-5.2.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("geoRglm", version = "0.9-11", dependencies = FALSE, lib = libpath, repos = repo)
install_version("geosphere", version = "1.5-10", dependencies = FALSE, lib = libpath, repos = repo)
install_version("GGally", version = "1.4.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ggbeeswarm", version = "0.6.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ggdendro", version = "0.1-20", dependencies = FALSE, lib = libpath, repos = repo)
install_version("GGIR", version = "1.9-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ggmap", version = "3.0.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ggridges", version = "0.5.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("glmmTMB", version = "0.2.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("glmnet", version = "2.0-18", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gstat", version = "2.0-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gtx", version = "0.0.8", dependencies = FALSE, lib = libpath, repos = repo)

# I

install_version("ifultools", version = "2.0-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("influenceR", version = "0.1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("irlba", version = "2.3.3", dependencies = FALSE, lib = libpath, repos = repo)

# K 

install_version("kdecopula", version = "0.9.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("kinship2", version = "1.8.4", dependencies = FALSE, lib = libpath, repos = repo)

# L

install_version("leaflet", version = "2.0.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("leaflet.extras", version = "1.0.0", dependencies = FALSE, lib = libpath, repos = repo)

# M

install_version("mapproj", version = "1.2.6", dependencies = FALSE, lib = libpath, repos = repo)
# maxent not installed. Removed from CRAN due to repeated non-response to requests to fix check issues. 
install_version("MCMCglmm", version = "2.29", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mda", version = "0.4-10", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Rdpack", version = "0.11-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("metap", version = "1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mi", version = "1.0", dependencies = FALSE, lib = libpath, repos = repo)

# NOTE: genefilter (needed for modeest) is a Bioconductor package
BiocManager::install("genefilter", lib = libpath, update = FALSE)
# also installs ‘BiocGenerics’, ‘IRanges’, ‘S4Vectors’, ‘AnnotationDbi’, ‘annotate’, ‘Biobase’
install_version("statip", version = "0.2.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("modeest", version = "2.3.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("msm", version = "1.6.7", dependencies = FALSE, lib = libpath, repos = repo)

# mvoutlier + dependencies
install_version("pcaPP", version = "1.9-73", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rrcov", version = "1.4-7", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("prabclus", version = "2.3-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fpc", version = "2.2-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("vcd", version = "1.4-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("laeken", version = "0.5.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ranger", version = "0.11.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("VIM", version = "4.8.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("NADA", version = "1.6-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("zCompositions", version = "1.3.2-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("robCompositions", version = "2.1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mvoutlier", version = "2.0.9", dependencies = FALSE, lib = libpath, repos = repo)

# N

install_version("ndjson", version = "0.7.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("network", version = "1.15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("networkD3", version = "0.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("neuralnet", version = "1.44.2", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("NMF", version = "0.21.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("np", version = "0.60-9", dependencies = FALSE, lib = libpath, repos = repo)

# O

install_version("openair", version = "2.6-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("optparse", version = "1.6.2", dependencies = FALSE, lib = libpath, repos = repo)

# P

install_version("party", version = "1.3-3", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("phangorn", version = "2.5.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pheatmap", version = "1.0.12", dependencies = FALSE, lib = libpath, repos = repo)
install_version("picante", version = "1.8", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pillar", version = "1.4.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("plotly", version = "4.9.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("plotmo", version = "3.5.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pls", version = "2.7-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("polysat", version = "1.7-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("PopGenome", version = "2.7.1", dependencies = FALSE, lib = libpath, repos = repo)

# R

install_version("R.oo", version = "1.22.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("R.utils", version = "2.9.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("R2admb", version = "0.7.16", dependencies = FALSE, lib = libpath, repos = repo)
install_version("R2WinBUGS", version = "2.1-21", depdencies = FALSE, lib = libpath, repos = repo)
install_version("rARPACK", version = "0.11-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("reticulate", version = "1.12", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RInside", version = "0.2.15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rioja", version = "0.9-21", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rlas", version = "1.3.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Rmisc", version = "1.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RPMM", version = "1.25", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RPostgreSQL", version = "0.6-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rsvd", version = "1.0.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Rtsne", version = "0.15", dependencies = FALSE, lib = libpath, repos = repo)

# S

install_version("satellite", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("shapefiles", version = "0.7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sctransform", version = "0.2.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("SDMTools", version = "1.1-221.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("seas", version = "0.5-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sem", version = "3.1-9", dependencies = FALSE, lib = libpath, repos = repo)

# seriation + dependencies
install_version("TSP", version = "1.1-7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gclus", version = "1.3.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("seriation", version = "1.2-7", dependencies = FALSE, lib = libpath, repos = repo)

# Seurat
# stable release of leiden wants python 2 (01.11.2019)
# same for some other Seurat dependencies
# get this error: /usr/bin/python3: symbol lookup error: /usr/bin/python3: undefined symbol: _Py_LegacyLocaleDetected
# (but loads regardless)

install_version("leiden", version = "0.3.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RcppParallel", version = "4.4.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sitmo", version = "2.0.1", dependencfies = FALSE, lib = libpath, repos = repo)
install_version("dqrng", version = "0.2.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("uwot", version = "0.1.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Seurat", version = "3.1.0", dependencies = FALSE, lib = libpath, repos = repo)

# sna needs statnet.common
install_version("statnet.common", version = "4.3.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sna", version = "2.4", dependencies = FALSE, lib = libpath, repos = repo)

install_version("snowfall", version = "1.84-6.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spatstat.data", version = "1.4-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spatstat", version = "1.60-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spgrass6", version = "0.8-9", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ssgraph", version = "1.8", dependencies = FALSE, lib = libpath, repos = repo)
install_version("statip", version = "0.2.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("streamR", version = "0.4.5", dependencies = FALSE, lib = libpath, repos = repo)

# T

install_version("tm", version = "0.7-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("TreeSim", version = "2.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("TreePar", version = "3.3", dependencies = FALSE, lib = libpath, repos = repo)

# U

install_version("umap", version = "0.2.2.0", dependencies = FALSE, lib = libpath, repos = repo)
# umap also gives undefined symbol: _Py_LegacyLocaleDetected error

# V

install_version("vcfR", version = "1.8.0", dependencies = FALSE, lib = libpath, repos = repo)

# VineCopula needs copula
install_version("copula", version = "0.999-19.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("VineCopula", version = "2.1.8", dependencies = FALSE, lib = libpath, repos = repo)
