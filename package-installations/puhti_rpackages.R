# PUHTI R-ENV 
# BLOCK-BY-BLOCK PACKAGE INSTALLATIONS
# Jesse Harrison June-July 2019

# This script attempts to compile packages included in Taito's r-env and r-spatialenv while updating
# everything to a more recent version. With the exception of devtools, the installations are done with
# dependencies set to FALSE for stricter version control.

# PACKAGE DEPS LISTED AS ANNOTATIONS!
# Package versions up-to-date on 05.07.2019

# Tested in conda env with:

# R 3.5.1
# RStudio 1.1.456
# GCC 6.1.0
# clang 4.0.2
# hdf5-1.10.5 

# lib path for testing:
# "/home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library"
# check lib paths using: .libPaths()

# Taito r-env loads (in addition to r-app): GCC, MKL, GIT, OPENMPI, BOOST
# Taito r-spatialenv loads (in addition to r-app): SQLITE, PROJ4, GEOS, SPATIALITE, MYSQL, GDAL, WXWIDGETS, SAGA

# Other sys requirements brought up during testing:

# MPI
# udunits2 (udunits2-devel / libudunits2.so)
# TBB
# openjdk (java development kit)
# Cairo
# GMP
# X11
# Magick++ (/ ImageMagick)
# NetCDF
# Poppler
# JAGS
# MySQL
# PostgreSQL
# libtiff
# zlib

# Uncertain ones (maybe already provided as default?)
# Libiconv
# libkml
# HDF5

# remove user-installed packages ####

# create a list of all installed packages
ip <- as.data.frame(installed.packages())
head(ip)
# if you use MRO, make sure that no packages in this library will be removed
ip <- subset(ip, !grepl("MRO", ip$LibPath))
# we don't want to remove base or recommended packages either\
ip <- ip[!(ip[,"Priority"] %in% c("base", "recommended")),]
# determine the library where the packages are installed
path.lib <- unique(ip$LibPath)
# create a vector with all the names of the packages you want to remove
pkgs.to.remove <- ip[,1]
head(pkgs.to.remove)
# remove the packages
sapply(pkgs.to.remove, remove.packages, lib = path.lib)

# clear working env ####
rm(list = ls())

# set libPath for installations - IMPORTANT! ####

# usually: 
# .libPaths()[1] for user-specific library
# .libPaths()[2] for system-wide installations

libpath <- .libPaths()[2]

# install devtools ####

# keeping dependencies = TRUE for this part and then updating to latest. Disabled (mostly) for everything else for stricter version control.

# during installation, may encounter following error (concerning package fs):
# ERROR: failed to lock directory ‘/home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library’ for modifying
# Try removing ‘/home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library/00LOCK-fs’

install.packages("devtools", dependencies = TRUE, lib = libpath)

# update everything to latest version ####
update.packages()


# Bioconductor version settings ####

# Each Bioconductor release is designed to work with a specific version of R.

# BiocManager::install(version = "3.8", lib = libpath) # for R 3.5.1
# BiocManager::install(version = "3.9", lib = libpath) # for R 3.6.0 

# load devtools ####

library(devtools)

# CRAN: low-level installations ####

# versions were latest on 28.06.2019
# dependencies = FALSE not really needed for these, but just in case...

install_version("abind", version = "1.4-5", dependencies = FALSE, lib = libpath)
install_version("acepack", version = "1.4.1", dependencies = FALSE, lib = libpath)
install_version("ADGofTest", version = "0.3", dependencies = FALSE, lib = libpath)
install_version("aggregation", version = "1.0.1", dependencies = FALSE, lib = libpath)
install_version("ash", version = "1.0-15", dependencies = FALSE, lib = libpath)
install_version("assertive.base", version = "0.0-7", dependencies = FALSE, lib = libpath)
install_version("assertthat", version = "0.2.1", dependencies = FALSE, lib = libpath)
install_version("base64enc", version = "0.1-3", dependencies = FALSE, lib = libpath)
install_version("batch", version = "1.1-5", dependencies = FALSE, lib = libpath)
install_version("bdsmatrix", version = "1.3-3", dependencies = FALSE, lib = libpath)
install_version("beanplot", version ="1.2", dependencies = FALSE, lib = libpath)
install_version("beeswarm", version = "0.2.3", dependencies = FALSE, lib = libpath)
install_version("BH", version = "1.69.0-1", dependencies = FALSE, lib = libpath)
install_version("BiasedUrn", version = "1.07", dependencies = FALSE, lib = libpath)
install_version("bigmemory.sri", version = "0.1.3", dependencies = FALSE, lib = libpath)
install_version("bindr", version = "0.1.1", dependencies = FALSE, lib = libpath)
install_version("bit", version = "1.1-14", dependencies = FALSE, lib = libpath)
install_version("bit64", version = "0.9-7", dependencies = FALSE, lib = libpath)
install_version("bitops", version = "1.0-6", dependencies = FALSE, lib = libpath)
install_version("blob", version = "1.1.1", dependencies = FALSE, lib = libpath)
install_version("boot", version = "1.3-22", dependencies = FALSE, lib = libpath)
install_version("brew", version = "1.0-6", dependencies = FALSE, lib = libpath)
install_version("calibrate", version = "1.7.2", dependencies = FALSE, lib = libpath)
install_version("carData", version = "3.0-2", dependencies = FALSE, lib = libpath)
install_version("chron", version = "2.3-53", dependencies = FALSE, lib = libpath)
install_version("class", version = "7.3-15", dependencies = FALSE, lib = libpath)
install_version("cluster", version = "2.1.0", dependencies = FALSE, lib = libpath)
install_version("codetools", version = "0.2-16", dependencies = FALSE, lib = libpath)
install_version("colorspace", version = "1.4-1", dependencies = FALSE, lib = libpath)
install_version("combinat", version = "0.0-8", dependencies = FALSE, lib = libpath)
install_version("corpcor", version = "1.6.9", dependencies = FALSE, lib = libpath)
install_version("corrplot", version = "0.84", dependencies = FALSE, lib = libpath)
install_version("data.table", version = "1.12.2", dependencies = FALSE, lib = libpath)
install_version("DBI", version = "1.0.0", dependencies = FALSE, lib = libpath)
install_version("deldir", version = "0.1-22", dependencies = FALSE, lib = libpath)
install_version("DEoptimR", version = "1.0-8", dependencies = FALSE, lib = libpath)
install_version("Deriv", version = "3.8.5", dependencies = FALSE, lib = libpath)
install_version("deSolve", version = "1.23", dependencies = FALSE, lib = libpath)
install_version("dichromat", version = "2.0-0", dependencies = FALSE, lib = libpath)
install_version("diptest", version = "0.75-7", dependencies = FALSE, lib = libpath)
install_version("dotCall64", version = "1.0-0", dependencies = FALSE, lib = libpath)
install_version("dynamicTreeCut", version = "1.63-1", dependencies = FALSE, lib = libpath)
install_version("ellipse", version = "0.4.1", dependencies = FALSE, lib = libpath)
install_version("entropy", version = "1.2.1", dependencies = FALSE, lib = libpath)
install_version("estimability", version = "1.3", dependencies = FALSE, lib = libpath)
install_version("extrafontdb", version = "1.0", dependencies = FALSE, lib = libpath)
install_version("fastcluster", version = "1.1.25", dependencies = FALSE, lib = libpath)
install_version("fastmatch", version = "1.1-0", dependencies = FALSE, lib = libpath)
install_version("fdrtool", version = "1.2.15", dependencies = FALSE, lib = libpath)
install_version("float", version = "0.2-2", dependencies = FALSE, lib = libpath) # NOTE: newest (0.2-3) needs R 3.6.0
install_version("fmsb", version = "0.6.3", dependencies = FALSE, lib = libpath)
install_version("FNN", version = "1.1.3", dependencies = FALSE, lib = libpath)
install_version("fracdiff", version = "1.4-2", dependencies = FALSE, lib = libpath)
install_version("fontcm", version = "1.1", dependencies = FALSE, lib = libpath)
install_version("formatR", version = "1.7", dependencies = FALSE, lib = libpath)
install_version("foreign", version = "0.8-71", dependencies = FALSE, lib = libpath)
install_version("Formula", version = "1.2-3", dependencies = FALSE, lib = libpath)
install_version("fracdiff", version = "1.4-2", dependencies = FALSE, lib = libpath)
install_version("futile.options", version = "1.0.1", dependencies = FALSE, lib = libpath)
install_version("gbRd", version = "0.4-11", dependencies = FALSE, lib = libpath)
install_version("generics", version = "0.0.2", dependencies = FALSE, lib = libpath)
install_version("getopt", version = "1.20.3", dependencies = FALSE, lib = libpath)
install_version("glasso", version = "1.10", dependencies = FALSE, lib = libpath)
install_version("glue", version = "1.3.1", dependencies = FALSE, lib = libpath)
install_version("goftest", version = "1.1-1", dependencies = FALSE, lib = libpath)
install_version("gower", version = "0.2.1", dependencies = FALSE, lib = libpath)
install_version("gridBase", version = "0.4-7", dependencies = FALSE, lib = libpath)
install_version("gsl", version = "2.1-6", dependencies = FALSE, lib = libpath)
install_version("gss", version = "2.1-10", dependencies = FALSE, lib = libpath)
install_version("gtable", version = "0.3.0", dependencies = FALSE, lib = libpath)
install_version("gtools", version = "3.8.1", dependencies = FALSE, lib = libpath)
install_version("hwriter", version = "1.3.2", dependencies = FALSE, lib = libpath)
install_version("ica", version = "1.0-2", dependencies = FALSE, lib = libpath)
install_version("inline", version = "0.3.15", dependencies = FALSE, lib = libpath)
install_version("intervals", version = "0.15.1", dependencies = FALSE, lib = libpath)
install_version("iterators", version = "1.0.10", dependencies = FALSE, lib = libpath)
install_version("jpeg", version = "0.1-8", dependencies = FALSE, lib = libpath)
install_version("kernlab", version = "0.9-27", dependencies = FALSE, lib = libpath)
install_version("KernSmooth", version = "2.23-15", dependencies = FALSE, lib = libpath)
install_version("labeling", version = "0.3", dependencies = FALSE, lib = libpath)
install_version("lattice", version = "0.20-38", dependencies = FALSE, lib = libpath)
install_version("LearnBayes", version = "2.15.1", dependencies = FALSE, lib = libpath)
install_version("listenv", version = "0.7.0", dependencies = FALSE, lib = libpath)
install_version("lmodel2", version = "1.7-3", dependencies = FALSE, lib = libpath)
install_version("locpol", version = "0.7-0", dependencies = FALSE, lib = libpath)
install_version("lpSolve", version = "5.6.13.1", dependencies = FALSE, lib = libpath)
install_version("lsei", version = "1.2-0", dependencies = FALSE, lib = libpath)
install_version("manipulate", version = "1.0.1", dependencies = FALSE, lib = libpath)
install_version("maps", version = "3.3.0", dependencies = FALSE, lib = libpath)
install_version("matrixcalc", version = "1.0-3", dependencies = FALSE, lib = libpath)
install_version("matrixStats", version = "0.54.0", dependencies = FALSE, lib = libpath)
install_version("mclust", version = "5.4.4", dependencies = FALSE, lib = libpath)
install_version("memuse", version = "4.0-0", dependencies = FALSE, lib = libpath)
install_version("microbenchmark", version = "1.4-6", dependencies = FALSE, lib = libpath)
install_version("mmap", version = "0.6-17", dependencies = FALSE, lib = libpath)
install_version("mnormt", version = "1.5-5", dependencies = FALSE, lib = libpath)
install_version("modeltools", version = "0.2-22", dependencies = FALSE, lib = libpath)
install_version("modes", version = "0.7.0", dependencies = FALSE, lib = libpath)
install_version("mvtnorm", version = "1.0-11", dependencies = FALSE, lib = libpath)
install_version("NbClust", version = "3.0", dependencies = FALSE, lib = libpath)
install_version("ncbit", version = "2013.03.29", dependencies = FALSE, lib = libpath)
install_version("nnet", version = "7.3-12", dependencies = FALSE, lib = libpath)
install_version("nnls", version = "1.4", dependencies = FALSE, lib = libpath)
install_version("nleqslv", version = "3.3.2", dependencies = FALSE, lib = libpath)
install_version("nlme", version = "3.1-140", dependencies = FALSE, lib = libpath)
install_version("nloptr", version = "1.2.1", dependencies = FALSE, lib = libpath)
install_version("NLP", version = "0.2-0", dependencies = FALSE, lib = libpath)
install_version("nor1mix", version = "1.3-0", dependencies = FALSE, lib = libpath)
install_version("nplplot", version = "4.5", dependencies = FALSE, lib = libpath)
install_version("numDeriv", version = "2016.8-1.1", dependencies = FALSE, lib = libpath)
install_version("outliers", version = "0.14", dependencies = FALSE, lib = libpath)
install_version("pbapply", version = "1.4-0", dependencies = FALSE, lib = libpath)
install_version("pbivnorm", version = "0.6.0", dependencies = FALSE, lib = libpath)
install_version("pbmcapply", version = "1.4.1", dependencies = FALSE, lib = libpath)
install_version("pdc", version = "1.0.3", dependencise = FALSE, lib = libpath)
install_version("permute", version = "0.9-5", dependencies = FALSE, lib = libpath)
install_version("pixmap", version = "0.4-11", dependencies = FALSE, lib = libpath)
install_version("plogr", version = "0.2.0", dependencies = FALSE, lib = libpath)
install_version("plotrix", version = "3.7-6", dependencies = FALSE, lib = libpath)
install_version("pinfsc50", version = "1.1.0", dependencise = FALSE, lib = libpath)
install_version("pixmap", version = "0.4-11", dependencies = FALSE, lib = libpath)
install_version("png", version = "0.1-7", dependencies = FALSE, lib = libpath)
install_version("pls", version = "2.7-1", dependencies = FALSE, lib = libpath)
install_version("PoiClaClu", version = "1.0.2.1", dependencies = FALSE, lib = libpath)
install_version("polyclip", version = "1.10-0", dependencies = FALSE, lib = libpath)
install_version("pracma", version = "2.2.5", dependencies = FALSE, lib = libpath)
install_version("praise", version = "1.0.0", dependencies = FALSE, lib = libpath)
install_version("PresenceAbsence", version = "1.1.9", dependencies = FALSE, lib = libpath)
install_version("princurve", version = "2.1.4", dependencies = FALSE, lib = libpath)
install_version("profileModel", version = "0.6.0", dependencies = FALSE, lib = libpath)
install_version("proto", version = "1.0.0", dependencies = FALSE, lib = libpath)
install_version("proxy", version = "0.4-23", dependencies = FALSE, lib = libpath)
install_version("pspline", version = "1.0-18", dependencies = FALSE, lib = libpath)
install_version("pvclust", version = "2.0-0", dependencies = FALSE, lib = libpath)
install_version("qap", version = "0.1-1", dependencies = FALSE, lib = libpath)
install_version("qrng", version = "0.0-5", dependencies = FALSE, lib = libpath)
install_version("quadprog", version = "1.5-7", dependencies = FALSE, lib = libpath)
install_version("qvcalc", version = "1.0.0", dependencies = FALSE, lib = libpath)
install_version("R.methodsS3", version = "1.7.1", dependencies = FALSE, lib = libpath)
install_version("RandomFieldsUtils", version = "0.5.3", dependencies = FALSE, lib = libpath)
install_version("RANN", version = "2.6.1", dependencies = FALSE, lib = libpath)
install_version("rematch", version = "1.0.1", dependencies = FALSE, lib = libpath)
install_version("RColorBrewer", version = "1.1-2", dependencies = FALSE, lib = libpath)
install_version("Rcpp", version = "1.0.1", dependencies = FALSE, lib = libpath)
install_version("rjson", version = "0.2.20", dependencies = FALSE, lib = libpath)
install_version("RJSONIO", version = "1.3-1.2", dependencies = FALSE, lib = libpath) # ORPHANED - was alternative to rsjon
install_version("rlecuyer", version = "0.3-4", dependencies = FALSE, lib = libpath)
install_version("rmutil", version = "1.1.3", dependencies = FALSE, lib = libpath)
install_version("rpart", version = "4.1-15", dependencies = FALSE, lib = libpath)
install_version("Rttf2pt1", version = "1.3.7", dependencies = FALSE, lib = libpath)
install_version("RUnit", version = "0.4.32", dependencies = FALSE, lib = libpath)
install_version("scatterplot3d", version = "0.3-41", dependencies = FALSE, lib = libpath)
install_version("segmented", version = "1.0-0", dependencies = FALSE, lib = libpath)
install_version("settings", version = "0.2.4", dependencies = FALSE, lib = libpath)
install_version("sfsmisc", version = "1.1-4", dependencies = FALSE, lib = libpath)
install_version("sgeostat", version = "1.0-27", dependencies = FALSE, lib = libpath)
install_version("shape", version = "1.4.4", dependencies = FALSE, lib = libpath)
install_version("slam", version = "0.1-45", dependencies = FALSE, lib = libpath)
install_version("snow", version = "0.4-3", dependencies = FALSE, lib = libpath)
install_version("sourcetools", version = "0.1.7", dependencies = FALSE, lib = libpath)
install_version("sp", version = "1.3-1", dependencies = FALSE, lib = libpath)
install_version("spatstat.utils", version = "1.13-0", dependencies = FALSE, lib = libpath)
install_version("spData", version = "0.3.0", dependencies = FALSE, lib = libpath)
install_version("SparseM", version = "1.77", dependencies = FALSE, lib = libpath)
install_version("spatial", version = "7.3-11", dependencies = FALSE, lib = libpath)
install_version("splus2R", version = "1.2-2", dependencies = FALSE, lib = libpath)
install_version("SQUAREM", version = "2017.10-1", dependencies = FALSE, lib = libpath)
install_version("sROC", version = "0.1-2", dependencies = FALSE, lib = libpath)
install_version("stabledist", version = "0.7-1", dependencies = FALSE, lib = libpath)
install_version("statmod", version = "1.4.32", dependencies = FALSE, lib = libpath)
install_version("subplex", version = "1.5-4", dependencies = FALSE, lib = libpath)
install_version("SuppDists", version = "1.1-9.4", dependencies = FALSE, lib = libpath) # ORPHANED
install_version("survival", version = "2.44-1.1", dependencies = FALSE, lib = libpath)
install_version("TeachingDemos", version = "2.10", dependencies = FALSE, lib = libpath)
install_version("tensor", version = "1.5", dependencies = FALSE, lib = libpath)
install_version("tensorA", version = "0.36.1", dependencies = FALSE, lib = libpath)
install_version("timeDate", version = "3043.102", dependencies = FALSE, lib = libpath)
install_version("truncnorm", version = "1.0-8", dependencies = FALSE, lib = libpath)
install_version("tsne", version = "0.1-3", dependencies = FALSE, lib = libpath)
install_version("uroot", version = "2.0-10", dependencies = FALSE, lib = libpath)
install_version("uuid", version = "0.1-2", dependencies = FALSE, lib = libpath)
install_version("vipor", version = "0.4.5", dependencies = FALSE, lib = libpath)
install_version("viridisLite", version = "0.3.0", dependencies = FALSE, lib = libpath)
install_version("withr", version = "2.1.2", dependencies = FALSE, lib = libpath)
install_version("zip", version = "2.0.3", dependencies = FALSE, lib = libpath)

# CRAN: pkgmaker (+ deps) and rngtools ####

# pkgmaker + deps
install_version("bibtex", version = "0.4.2", dependencies = FALSE, lib = libpath)
install_version("registry", version = "0.5-1", dependencies = FALSE, lib = libpath)
install_version("xtable", version = "1.8-4", dependencies = FALSE, lib = libpath)
install_version("pkgmaker", version = "0.27", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.0.0), methods, stats, registry
# Imports: 	tools, grDevices, utils, graphics, codetools, digest, stringi, magrittr, stringr, xtable, withr, bibtex (≥ 0.4)

# rngtools (needs pkgmaker)
install_version("rngtools", version = "1.4", dependencies = FALSE, lib = libpath)
# NOTE: latest Version (1.3.1.1) Depends: 	R (≥ 3.6.0), methods, pkgmaker (≥ 0.20)

# CRAN: tidyverse (+ missing deps) ####

# tidyverse has many deps, going through them first

install_version("tidyselect", version = "0.2.5", dependencies = FALSE, lib = libpath) # BH and plogr
install_version("dplyr", version = "0.8.3", dependencies = FALSE, lib = libpath) # tidyselect
install_version("tidyr", version = "0.8.3", dependencies = FALSE, lib = libpath) 
# dplyr (≥ 0.7.0), glue, magrittr, purrr, Rcpp, rlang, stringi, tibble, tidyselect (≥ 0.2.5)

install_version("dbplyr", version = "1.4.2", dependencies = FALSE, lib = libpath) # DBI
install_version("cellranger", version = "1.1.0", dependencies = FALSE, lib = libpath) # rematch, tibble
install_version("ellipsis", version = "0.2.0.1", dependencies = FALSE, lib = libpath) # rlang
install_version("forcats", version = "0.4.0", dependencies = FALSE, lib = libpath) # ellipsis

install_version("plyr", version = "1.8.4", dependencies = FALSE, lib = libpath) # Rcpp
install_version("reshape2", version = "1.4.3", dependencies = FALSE, lib = libpath) # plyr
install_version("broom", version = "0.5.2", dependencies = FALSE, lib = libpath) # generics, reshape2, tidyr

install_version("munsell", version = "0.5.0", dependencies = FALSE, lib = libpath) # colorspace
install_version("scales", version = "1.0.0", dependencies = FALSE, lib = libpath) # labeling, munsell, RColorBrewer

install_version("mgcv", version = "1.8-28", dependencies = FALSE, lib = libpath) # nlme
install_version("ggplot2", version = "3.2.0", dependencies = FALSE, lib = libpath)
# Imports: 	digest, grDevices, grid, gtable (≥ 0.1.1), lazyeval, MASS, mgcv, reshape2, rlang (≥ 0.3.0), 
# scales (≥ 0.5.0), stats, tibble, viridisLite, withr (≥ 2.0.0)

install_version("hms", version = "0.4.2", dependencies = FALSE, lib = libpath) # pkgconfig, rlang
install_version("readr", version = "1.3.1", dependencies = FALSE, lib = libpath) # Rcpp (≥ 0.12.0.5), tibble, hms (≥ 0.4.1), R6, clipr, crayon, methods

install_version("prettyunits", version = "1.0.2", dependencies = FALSE, lib = libpath) # magrittr, assertthat, methods
install_version("progress", version = "1.2.2", dependencies = FALSE, lib = libpath) #  hms, prettyunits, R6, crayon

# haven and readxl installations are a little problematic (on conda at least), below is one solution.
# the vanilla installations give this type of error: 

# install_version("haven", version = "2.1.1", dependencies = FALSE, lib = libpath)
# Error: package or namespace load failed for ‘haven’ in dyn.load(file, DLLpath = DLLpath, ...):
# unable to load shared object '/home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library/haven/libs/haven.so': (OR: readxl.so)
# /home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library/haven/libs/haven.so: undefined symbol: libiconv

withr::with_makevars(c(PKG_LIBS = "-liconv"), install_version("haven", version = "2.1.1", dependencies = FALSE, lib = libpath), assignment = "+=")
# forcats (≥ 0.2.0), hms, Rcpp (≥ 0.11.4), readr (≥ 0.1.0), tibble
withr::with_makevars(c(PKG_LIBS = "-liconv"), install_version("readxl", version = "1.3.1", dependencies = FALSE, lib = libpath), assignment = "+=")
# cellranger, Rcpp (≥ 0.12.18), tibble (≥ 1.3.1), utils

install_version("lubridate", version = "1.7.4", dependencies = FALSE, lib = libpath) # stringr, Rcpp (≥ 0.12.13)
install_version("modelr", version = "0.1.4", dependencies = FALSE, lib = libpath) # broom, dplyr, magrittr, purrr (≥ 0.2.2), rlang (≥ 0.2.0), tibble, tidyr (≥ 0.8.0)
install_version("processx", version = "3.3.1", dependencies = FALSE, lib = libpath) # ps, R6
install_version("callr", version = "3.2.0", dependencies = FALSE, lib = libpath) # processx, R6
install_version("reprex", version = "0.3.0", dependencies = FALSE, lib = libpath) # callr (≥ 2.0.0), clipr (≥ 0.4.0), fs, rlang, rmarkdown, utils, whisker, withr

# then tidyverse
install_version("tidyverse", version = "1.2.1", dependencies = FALSE, lib = libpath) 
# Imports: 	broom (≥ 0.4.2), cli (≥ 1.0.0), crayon (≥ 1.3.4), dplyr (≥ 0.7.4), dbplyr (≥ 1.1.0), forcats (≥ 0.2.0), 
# ggplot2 (≥ 2.2.1), haven (≥ 1.1.0), hms (≥ 0.3), httr (≥ 1.3.1), jsonlite (≥ 1.5), lubridate (≥ 1.7.1), magrittr (≥ 1.5), modelr (≥ 0.1.1), purrr (≥ 0.2.4), 
# readr (≥ 1.1.1), readxl (≥ 1.0.0), reprex (≥ 0.1.1), rlang (≥ 0.1.4), rstudioapi (≥ 0.7), rvest (≥ 0.3.2), stringr (≥ 1.2.0), tibble (≥ 1.3.4), tidyr (≥ 0.7.2), xml2 (≥ 1.1.1)

# CRAN: lme4 and strucchange (+ deps) ####

install_version("minqa", version = "1.2.4", dependencies = FALSE, lib = libpath) # Rcpp
install_version("RcppEigen", version = "0.3.3.5.0", dependencies = FALSE, lib = libpath) # Matrix, Rcpp
install_version("lme4", version = "1.1-21", dependencies = FALSE, lib = libpath) # boot, minqa, nloptr, RcppEigen

# strucchange + deps

install_version("zoo", version = "1.8-6", dependencies = FALSE, lib = libpath) # lattice
install_version("sandwich", version = "2.5-1", dependencies = FALSE, lib = libpath) # zoo
install_version("strucchange", version = "1.5-1", dependencies = FALSE, lib = libpath) # sandwich

# CRAN: misc w/ up + downstream deps (NOTE: memory-intensive if run at once) ####

# packages that can be compiled using low-level installs above

# Misc Set 1 (splitting into sets to avoid mem problems) ####
install_version("brglm", version = "0.6.2", dependencies = FALSE, lib = libpath) # profileModel
install_version("coda", version = "0.19-2", dependencies = FALSE, lib = libpath) # lattice
install_version("expm", version = "0.999-4", dependencies = FALSE, lib = libpath) # Matrix
install_version("flexclust", version = "1.4-0", dependencies = FALSE, lib = libpath) # lattice, modeltools, class
install_version("fs", version = "1.3.1", dependencies = FALSE, lib = libpath) # Rcpp
install_version("future", version = "1.14.0", dependencies = FALSE, lib = libpath) # digest, globals (≥ 0.12.4), listenv (≥ 0.7.0), parallel, utils
install_version("ggrepel", version = "0.8.1", dependencies = FALSE, lib = libpath) # ggplot2, Rcpp, scales
install_version("globals", version = "0.12.4", dependencies = FALSE, lib = libpath) # codetools
install_version("hier.part", version = "1.0-4", dependencies = FALSE, lib = libpath) # gtools
install_version("huge", version = "1.3.2", dependencies = FALSE, lib = libpath) # Matrix, igraph, MASS, Rcpp
install_version("influenceR", version = "0.1.0", dependencies = FALSE, lib = libpath) # igraph, Matrix
install_version("lambda.r", version = "1.2.3", dependencies = FALSE, lib = libpath) # formatR 
install_version("libcoin", version = "1.0-4", dependencies = FALSE, lib = libpath) # mvtnorm
install_version("locfit", version = "1.5-9.1", dependencies = FALSE, lib = libpath) # lattice
install_version("maptools", version = "0.9-5", dependencies = FALSE, lib = libpath) # foreign, lattice
install_version("ModelMetrics", version = "1.2.2", dependencies = FALSE, lib = libpath) # Rcpp, data.table
install_version("npsurv", version = "0.4-0", dependencies = FALSE, lib = libpath) # lsei
install_version("pbkrtest", version = "0.4-7", dependencies = FALSE, lib = libpath) # lme4, Matrix, MASS
install_version("qpdf", version = "1.1", dependencies = FALSE, lib = libpath) # Rcpp, askpass, curl
install_version("RandomFields", version = "3.3.6", dependencies = FALSE, lib = libpath) # sp, RandomFieldsUtils
install_version("raster", version = "2.9-5", dependencies = FALSE, lib = libpath) # Rcpp, sp
install_version("RcppAnnoy", version = "0.0.12", dependencies = FALSE, lib = libpath) # Rcpp
install_version("RcppCNPy", version = "0.2.10", dependencies = FALSE, lib = libpath) # Rcpp
install_version("RcppExamples", version = "0.1.8", dependencies = FALSE, lib = libpath) # Rcpp
install_version("RcppRoll", version = "0.3.0", dependecies = FALSE, lib = libpath) # Rcpp
install_version("Rdpack", version = "0.11-0", dependencies = FALSE, lib = libpath) # bibtex, gbRd
install_version("RgoogleMaps", version = "1.4.3", dependencies = FALSE, lib = libpath) # png
install_version("rmarkdown", version = "1.13", dependencies = FALSE, lib = libpath)
# Imports: 	tools, utils, knitr (≥ 1.22), yaml (≥ 2.1.19), htmltools (≥ 0.3.5), evaluate (≥ 0.13), 
# base64enc, jsonlite, mime, tinytex (≥ 0.11), xfun, methods, stringr (≥ 1.2.0)
# Misc Set 2 ####
install_version("robustbase", version = "0.93-5", dependencies = FALSE, lib = libpath) # DEoptimR
install_version("RSpectra", version = "0.15-0", dependencies = FALSE, lib = libpath) # Matrix, Rcpp
# Misc Set 3 ####
install_version("RSQLite", version = "2.1.1", dependencies = FALSE, lib = libpath) 
# bit64, blob (≥ 1.1.1), DBI (≥ 1.0.0), memoise, methods, pkgconfig, Rcpp (≥ 0.12.7)
install_version("sendmailR", version = "1.2-1", dependencies = FALSE, lib = libpath) # base64enc
install_version("xts", version = "0.11-2", dependencies = FALSE, lib = libpath) # needs zoo
install_version("spacetime", version = "1.2-2", dependencies = FALSE, lib = libpath)
# Imports: 	graphics, utils, stats, methods, lattice, sp (≥ 1.1-0), zoo (≥ 1.7-9), xts (≥ 0.8-8), intervals
install_version("spam", version = "2.2-2", dependencies = FALSE, lib = libpath) # dotCall64
install_version("splancs", version = "2.01-40", dependencies = FALSE, lib = libpath) # sp
install_version("stable", version = "1.1.4", dependencies = FALSE, lib = libpath) # rmutil, stabledist
install_version("timeSeries", version = "3042.102", dependencies = FALSE, lib = libpath) # timeDate
install_version("TMB", version = "1.7.15", dependencies = FALSE, lib = libpath) # Matrix
install_version("vctrs", version = "0.1.0", dependencies = FALSE, lib = libpath) # backports, digest, glue, rlang, zeallot
install_version("vegan", version = "2.5-5", dependencies = FALSE, lib = libpath) # cluster, lattice, MASS, mgcv, permute

# Misc Set 4 ####
# packages that need low-level installs above + some further deps to compile

# quantreg (MatrixModels)
install_version("MatrixModels", version = "0.4-1", dependencies = FALSE, lib = libpath) # Matrix
install_version("quantreg", version = "5.41", dependencies = FALSE, lib = libpath) # SparseM, MatrixModels

# rio (openxlsx)
install_version("openxlsx", version = "4.1.0.1", dependencies = FALSE, lib = libpath) # Rcpp, zip
install_version("rio", version = "0.5.16", dependencies = FALSE, lib = libpath)
# Imports: 	tools, stats, utils, foreign, haven (≥ 1.1.0), curl (≥ 0.6),
# data.table (≥ 1.9.8), readxl (≥ 0.1.1), openxlsx, tibble

# classInt (e1071)
install_version("e1071", version = "1.7-2", dependencies = FALSE, lib = libpath) # class
install_version("classInt", version = "0.3-3", dependencies = FALSE, lib = libpath) # e1071, class, KernSmooth

# promises (later)
install_version("later", version = "0.8.0", dependencies = FALSE, lib = libpath) # Rcpp, rlang
install_version("promises", version = "1.0.1", dependencies = FALSE, lib = libpath) # R6, Rcpp, later, rlang, magrittr

# shinyjs (httpuv, shiny)
install_version("httpuv", version = "1.5.1", dependencies = FALSE, lib = libpath) # Rcpp, R6, promises, later
install_version("shiny", version = "1.3.2", dependencies = FALSE, lib = libpath) 
# httpuv, mime, jsonlite, xtable, digest, htmltools, R6, sourcetools, later, promises, crayon, rlang
install_version("shinyjs", version = "1.0", dependencies = FALSE, lib = libpath) # digest, htmltools, jsonlite, shiny

# gmodels (gdata)
install_version("gdata", version = "2.18.0", dependencies = FALSE, lib = libpath) # gtools
install_version("gmodels", version = "2.18.1", dependencies = FALSE, lib = libpath) # MASS, gdata

# recipes (lava, prodlim, ipred)
install_version("lava", version = "1.6.5", dependencies = FALSE, lib = libpath) # numDeriv, survival, SQUAREM
install_version("prodlim", version = "2018.04.18", dependencies = FALSE, lib = libpath) # needs Rcpp, survival, KernSmooth, lava
install_version("ipred", version = "0.9-9", dependencies = FALSE, lib = libpath) # needs rpart, MASS, survival, nnet, class, prodlim
install_version("recipes", version = "0.1.6", dependencies = FALSE, lib = libpath) # dplyr
# also Imports: generics, glue, gower, ipred, lubridate, magrittr, Matrix, purrr (≥ 0.2.3), rlang (≥ 0.4.0),
# stats, tibble, tidyr, tidyselect (≥ 0.2.5), timeDate, utils, withr

# multcomp (TH.data)
install_version("TH.data", version = "1.0-10", dependencies = FALSE, lib = libpath) # survival, MASS
install_version("multcomp", version = "1.4-10", dependencies = FALSE, lib = libpath) # mvtnorm, survival, TH.data, sandwich, codetools

# geometry (commonmark, magic, roxygen2, RcppArmadillo, RcppProgress)
install_version("commonmark", version = "1.7", dependencies = FALSE, lib = libpath) # curl, testthat, xml2
install_version("magic", version = "1.5-9", dependencies = FALSE, lib = libpath) # abind
install_version("roxygen2", version = "6.1.1", dependencies = FALSE, lib = libpath) # brew, commonmark, desc, digest, pkgload,
# purrr, R6, Rcpp, stringi, stringr, xml2
install_version("RcppArmadillo", version = "0.9.500.2.0", dependencies = FALSE, lib = libpath) # Rcpp
install_version("RcppProgress", version = "0.4.1", dependencies = FALSE, lib = libpath) # RcppArmadillo, devtools, roxygen2, testthat
install_version("geometry", version = "0.4.1.1", dependencies = FALSE, lib = libpath) # magic, Rcpp, RcppProgress, lpSolve

# rgexf (Rook, RCurl, XML)
install_version("Rook", version = "1.1-1", dependencies = FALSE, lib = libpath) # brew
install_version("RCurl", version = "1.95-4.12", dependencies = FALSE, lib = libpath) # bitops
install_version("XML", version = "3.98-1.20", dependencies = FALSE, lib = libpath) # bitops, RCurl
install_version("rgexf", version = "0.15.3", dependencies = FALSE, lib = libpath) # XML, Rook, igraph

# Hmisc (htmlwidgets, visNetwork, checkmate, htmlTable, gridExtra, viridis, latticeExtra)
install_version("htmlwidgets", version = "1.3", dependencies = FALSE, lib = libpath) # htmltools, jsonlite, yaml
install_version("visNetwork", version = "2.0.7", dependencies = FALSE, lib = libpath) # htmlwidgets, htmltools, jsonlite, magrittr
install_version("checkmate", version = "1.9.4", dependencies = FALSE, lib = libpath) # R6, bit, fastmatch, data.table (≥ 1.9.8), devtools, ggplot2, knitr, 
# magrittr, microbenchmark, rmarkdown, testthat (≥ 0.11.0), tibble
install_version("htmlTable", version = "1.13.1", dependencies = FALSE, lib = libpath) 
# Imports: 	stringr, knitr (≥ 1.6), magrittr (≥ 1.5), methods, checkmate, htmlwidgets, htmltools, rstudioapi (≥ 0.6)
install_version("gridExtra", version = "2.3", dependencies = FALSE, lib = libpath) # gtable
install_version("viridis", version = "0.5.1", dependencies = FALSE, lib = libpath) # ggplot2, gridExtra
install_version("latticeExtra", version = "0.6-28", dependencies = FALSE, lib = libpath) # lattice, RColorBrewer
install_version("Hmisc", version = "4.2-0", dependencies = FALSE, lib = libpath)
# Depends: 	lattice, survival (≥ 2.40-1), Formula, ggplot2 (≥ 2.2)
# Imports: 	methods, latticeExtra, cluster, rpart, nnet, acepack, foreign, gtable, grid, gridExtra, data.table, 
# htmlTable (≥ 1.11.0), viridis, htmltools, base64enc

# qgraph + deps aside from Hmisc (BDGraph, d3Network, ggm, lavaan, psych)
install_version("BDgraph", version = "2.59", dependencies = FALSE, lib = libpath) # igraph
install_version("d3Network", version = "0.5.2.1", dependencies = FALSE, lib = libpath) # plyr, rjson, whisker 
# NOTE: ORPHANED, development moved to 'networkD3'
install_version("ggm", version = "2.3", dependencies = FALSE, lib = libpath) # igraph
install_version("lavaan", version = "0.6-4", dependencies = FALSE, lib = libpath) # MASS, mnormt, pbivnorm, numDeriv
install_version("psych", version = "1.8.12", dependencies = FALSE, lib = libpath) 
# Imports: mnormt, parallel, stats, graphics, grDevices, methods, foreign, lattice, nlme
install_version("qgraph", version = "1.6.3", dependencies = FALSE, lib = libpath) 
# Imports: 	Rcpp (≥ 1.0.0), methods, grDevices, psych, lavaan, plyr, Hmisc, igraph, jpeg, png, colorspace, Matrix, corpcor, 
# reshape2, ggplot2, glasso, huge, fdrtool, d3Network, ggm, gtools, BDgraph, parallel, pbapply, abind

# ROCR (caTools, gplots)
install_version("caTools", version = "1.17.1.2", dependencies = FALSE, lib = libpath) # bitops
install_version("gplots", version = "3.0.1.1", dependencies = FALSE, lib = libpath) # gtools, gdata, caTools, KernSmooth
install_version("ROCR", version = "1.0-7", dependencies = FALSE, lib = libpath) # gplots

# survey (mitools)
install_version("mitools", version = "2.4", dependencies = FALSE, lib = libpath) # DBI
install_version("survey", version = "3.36", dependencies = FALSE, lib = libpath) # Matrix, survival, lattice, minqa, numDeriv, mitools

# manipulateWidget (miniUI, webshot)
install_version("miniUI", version = "0.1.1.1", dependencies = FALSE, lib = libpath) # shiny, htmltools
install_version("webshot", version = "0.5.1", dependencies = FALSE, lib = libpath) # magrittr, jsonlite, callr
install_version("manipulateWidget", version = "0.10.0", dependencies = FALSE, lib = libpath) 
# Imports: 	shiny (≥ 1.0.3), miniUI, htmltools, htmlwidgets, knitr, methods, tools, base64enc, grDevices, codetools, webshot

# ggraph (farver, tweenr, ggforce)
install_version("farver", version = "1.1.0", dependencies = FALSE, lib = libpath) # Rcpp
install_version("tweenr", version = "1.0.1", dependencies = FALSE, lib = libpath) # farver, magrittr, rlang
install_version("ggforce", version = "0.2.2", dependencies = FALSE, lib = libpath)
# Depends: 	ggplot2 (≥ 3.0.0), R (≥ 3.3.0)
# Imports: 	Rcpp (≥ 0.12.2), grid, scales, MASS, tweenr (≥ 0.1.5), gtable, rlang, polyclip, stats, grDevices
install_version("ggraph", version = "1.0.2", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 2.10), ggplot2 (≥ 2.0.0)
# Imports: 	Rcpp (≥ 0.12.2), dplyr, plyr, ggforce, grid, igraph (≥ 1.0.0), scales, MASS, digest, gtable, ggrepel, utils, stats, viridis

# CRAN: assertive deps (building on assertive.base) ####

install_version("assertive.matrices", version = "0.0-2", dependencies = FALSE, lib = libpath)
install_version("assertive.models", version = "0.0-2", dependencies = FALSE, lib = libpath)
install_version("assertive.numbers", version = "0.0-2", dependencies = FALSE, lib = libpath)
install_version("assertive.properties", version = "0.0-4", dependencies = FALSE, lib = libpath)
install_version("assertive.reflection", version = "0.0-4", dependencies = FALSE, lib = libpath)
install_version("assertive.sets", version = "0.0-3", dependencies = FALSE, lib = libpath)
install_version("assertive.types", version = "0.0-3", dependencies = FALSE, lib = libpath) # assertive.properties and codetools
install_version("assertive.code", version = "0.0-3", dependencies = FALSE, lib = libpath) # assertive.properties, assertive.types
install_version("assertive.strings", version = "0.0-3", dependencies = FALSE, lib = libpath) # assertive.properties, stringi
install_version("assertive.data", version = "0.0-3", dependencies = FALSE, lib = libpath) # assertive.strings
install_version("assertive.data.uk", version = "0.0-2", dependencies = FALSE, lib = libpath) # assertive.strings
install_version("assertive.data.us", version = "0.0-2", dependencies = FALSE, lib = libpath) # assertive.strings
install_version("assertive.datetimes", version = "0.0-2", dependencies = FALSE, lib = libpath) # assertive.types
install_version("assertive.files", version = "0.0-2", dependencies = FALSE, lib = libpath) # assertive.numbers

# CRAN: BBmisc ####

install_version("BBmisc", version = "1.11", dependencies = FALSE, lib = libpath)

# CRAN: kimisc + dep aside from plyr ####

install_version("pryr", version = "0.1.4", dependencies = FALSE, lib = libpath) # stringr, codetools, methods, Rcpp (≥ 0.11.0)
install_version("kimisc", version = "0.4", dependencies = FALSE, lib = libpath) # memoise, plyr, pryr

# CRAN: forecast + missing deps ####

install_version("lmtest", version = "0.9-37", dependencies = FALSE, lib = libpath) # zoo
install_version("TTR", version = "0.23-4", dependencies = FALSE, lib = libpath) # zoo, xts
install_version("quantmod", version = "0.4-15", dependencies = FALSE, lib = libpath) # TTR, zoo, xts
install_version("tseries", version = "0.10-47", dependencies = FALSE, lib = libpath) # quadprog, quantmod, zoo
install_version("urca", version = "1.3-0", dependencies = FALSE, lib = libpath) # nlme
install_version("forecast", version = "8.7", dependencies = FALSE, lib = libpath) # all of the above and some others

# CRAN: biomod2 missing deps ####
install_version("hexbin", version = "1.27.3", dependencies = FALSE, lib = libpath) # lattice
install_version("reshape", version = "0.8.8", dependencies = FALSE, lib = libpath) # plyr
install_version("rasterVis", version = "0.46", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 2.14.0), methods, raster (≥ 2.0-12), lattice, latticeExtra
# Imports: 	stats, utils, parallel, grid, grDevices, RColorBrewer, hexbin, sp (≥ 1.0-6), zoo, viridisLite
install_version("pROC", version = "1.15.0", dependencies = FALSE, lib = libpath) # plyr, Rcpp
install_version("gbm", version = "2.1.5", dependencies = FALSE, lib = libpath) # gridExtra, lattice, survival
install_version("mda", version = "0.4-10", dependencies = FALSE, lib = libpath) # class
install_version("randomForest", version = "4.6-14", dependencies = FALSE, lib = libpath) # RColorBrewer, MASS
install_version("dismo", version = "1.1-4", dependencies = FALSE, lib = libpath) # raster, sp
install_version("plotmo", version = "3.5.5", dependencies = FALSE, lib = libpath) # Formula, plotrix, TeachingDemos
install_version("earth", version = "5.1.1", dependencies = FALSE, lib = libpath) # Formula, plotmo, TeachingDemos

# CRAN: blockmodeling missing deps ####
install_version("foreach", version = "1.4.4", dependencies = FALSE, lib = libpath) # codetools, iterators
install_version("doParallel", version = "1.0.14", dependencies = FALSE, lib = libpath) # foreach, iterators
install_version("doRNG", version = "1.7.1", dependencies = FALSE, lib = libpath) # foreach, rngtools

# CRAN: other packages (loosely alphabetical) ####
# "top of the food chain" packages with limited downstream requirements

# A

install_version("ade4", version = "1.7-13", dependencies = FALSE, lib = libpath) 
# Depends: R (≥ 2.10), Imports: graphics, grDevices, methods, stats, utils, MASS
# if installing with deps = TRUE, needs udunits2-devel (libudunits2.so)

# adegenet needs ‘shiny’, ‘seqinr’, ‘spdep’, others installed above but add seqinr here
install_version("seqinr", version = "3.4-5", dependencies = FALSE, lib = libpath) # needs ade4, segmented

install_version("akima", version = "0.6-2", dependencies = FALSE, lib = libpath) # Imports: sp
install_version("amap", version = "0.8-16", dependencies = FALSE, lib = libpath) # NOTE: Latest version (0.8-17) Depends: R (≥ 3.6.0)
install_version("analogue", version = "0.17-3", dependencies = FALSE, lib = libpath) # Depends: 	R (≥ 3.5.0), vegan (≥ 2.2-0), 
# Imports: 	mgcv, MASS, stats, graphics, grid, brglm, princurve (≥ 2.0.2), lattice
install_version("ape", version = "5.3", dependencies = FALSE, lib = libpath) # Depends: R (≥ 3.2.0), Imports:	nlme, lattice, graphics, methods, stats, tools, utils, parallel, Rcpp (≥ 0.12.0)
install_version("arm", version = "1.10-1", dependencies = FALSE, lib = libpath) # Depends: R (≥ 3.1.0), MASS, Matrix (≥ 1.0), stats, lme4 (≥ 1.0) 
# Imports: 	abind, coda, graphics, grDevices, methods, nlme, utils
install_version("assertive", version = "0.3-5", dependencies = FALSE, lib = libpath) # Depends: 	R (≥ 3.0.0) 
# Imports: 	assertive.base (≥ 0.0-4), assertive.properties (≥ 0.0-2), assertive.types (≥ 0.0-2), assertive.numbers, 
# assertive.strings, assertive.datetimes, assertive.files, assertive.sets (≥ 0.0-2), assertive.matrices, assertive.models, assertive.data, assertive.data.uk, assertive.data.us, 
# assertive.reflection (≥ 0.0-2), assertive.code, knitr

# B

install_version("base64", version = "2.0", dependencies = FALSE, lib = libpath) # Imports:	openssl (which imports askpass) NOTE: ORPHANED, base64enc is newer
install_version("BatchJobs", version = "1.8", dependencies = FALSE, lib = libpath) # Depends: 	R (≥ 3.0.0), BBmisc (≥ 1.9), methods 
# Imports: 	backports (≥ 1.1.1), brew, checkmate (≥ 1.8.0), data.table (≥ 1.9.6), DBI, digest, 
# parallel, RSQLite (≥ 1.0.9011), sendmailR, stats, stringi (≥ 0.4-1), utils
install_version("bazar", version = "1.0.11", dependencies = FALSE, lib = libpath) # Depends: 	R (≥ 3.1.3) Imports: 	kimisc, stats, tools, utils
install_version("bfast", version = "1.5.7", dependencies = FALSE, lib = libpath) # Imports: 	graphics, stats, strucchange, zoo, forecast, sp, raster
install_version("bibtex", version = "0.4.2", dependencies = FALSE, lib = libpath) # needs stringr
install_version("biglm", version = "0.9-1", dependencies = FALSE, lib = libpath) # Depends: 	DBI, methods
install_version("bigmemory", version = "4.5.33", dependencies = FALSE, lib = libpath) # Imports: methods, Rcpp, utils, bigmemory.sri
install_version("bindrcpp", version = "0.2.2", dependencies = FALSE, lib = libpath) # bindr, Rcpp
install_version("biomod2", version = "3.3-7.1", dependencies = FALSE, lib = libpath) 
# Depends: 	R (≥ 3.2.1), stats, utils, sp, raster, parallel, reshape, ggplot2
# Imports: 	abind, rasterVis, pROC, nnet, gbm, mda, randomForest, rpart, MASS, methods, PresenceAbsence, dismo, earth
# rasterVis Depends: 	R (≥ 2.14.0), methods, raster (≥ 2.0-12), lattice, latticeExtra
# rasterVis Imports: 	stats, utils, parallel, grid, grDevices, RColorBrewer, hexbin, sp (≥ 1.0-6), zoo, viridisLite
install_version("blockmodeling", version = "0.3.4", dependencies = FALSE, lib = libpath) # Imports: 	stats, methods, Matrix, doParallel, doRNG, parallel, foreach
install_version("bookdown", version = "0.11", dependencies = FALSE, lib = libpath) # Imports: htmltools (≥ 0.3.6), knitr (≥ 1.22), rmarkdown (≥ 1.12), xfun (≥ 0.6), tinytex (≥ 0.12)
install_version("BradleyTerry2", version = "1.1-0", dependencies = FALSE, lib = libpath) # Imports: 	brglm, gtools, lme4 (≥ 1.0), qvcalc, stats

# C

install_version("car", version = "3.0-3", dependencies = FALSE, lib = libpath) # Imports: abind, MASS, mgcv, nnet, pbkrtest (≥ 0.4-4), quantreg, grDevices, utils, stats, graphics, maptools, rio, lme4, nlme
install_version("caret", version = "6.0-84", dependencies = FALSE, lib = libpath) # lattice, ggplot2
# also Imports: 	foreach, methods, plyr, ModelMetrics (≥ 1.1.0), nlme, reshape2, stats, stats4, utils, grDevices, recipes (≥ 0.1.4), withr (≥ 2.0.0)
install_version("clue", version = "0.3-57", dependencies = FALSE, lib = libpath) # cluster
install_version("clusterGeneration", version = "1.3.4", dependencies = FALSE, lib = libpath) # MASS
install_version("clv", version = "0.3-2.1", dependencies = FALSE, lib = libpath) # cluster, class
install_version("coin", version = "1.3-0", dependencies = FALSE, lib = libpath) # survival
# also Imports: 	methods, parallel, stats, stats4, utils, libcoin (≥ 1.0-0), matrixStats (≥ 0.54.0), modeltools (≥ 0.2-9), mvtnorm (≥ 1.0-5), multcomp
install_version("cowplot", version = "0.9.4", dependencies = FALSE, lib = libpath) # ggplot2, gtable, plyr, scales
install_version("crosstalk", version = "1.0.0", dependencies = FALSE, lib = libpath) # htmltools, jsonlite, lazyeval, R6, shiny, ggplot2
install_version("cubature", version = "2.0.3", dependencies = FALSE, lib = libpath) # Rcpp
install_version("CVST", version = "0.2-2", dependencies = FALSE, lib = libpath) # kernlab, Matrix
install_version("cvTools", version = "0.3.2", dependencies = FALSE, lib = libpath) # lattice, robustbase

# D

install_version("ddalpha", version = "1.3.9", dependencies = FALSE, lib = libpath) # MASS, class, robustbase, sfsmisc, geometry
install_version("dendextend", version = "1.12.0", dependencies = FALSE, lib = libpath) # utils, stats, datasets, magrittr (≥ 1.0.1), ggplot2, viridis
install_version("DetSel", version = "1.0.3", dependencies = FALSE, lib = libpath) # ash
install_version("downloader", version = "0.4", dependencies = FALSE, lib = libpath) # digest, used for DiagrammeR
install_version("DiagrammeR", version = "1.0.1", dependencies = FALSE, lib = libpath)
# Imports: 	dplyr (≥ 0.7.4), downloader (≥ 0.4), glue (≥ 1.2.0), htmltools (≥ 0.3.6), htmlwidgets (≥ 1.0), igraph (≥ 1.1.2), 
# influenceR (≥ 0.1.0), magrittr (≥ 1.5), purrr (≥ 0.2.4), RColorBrewer (≥ 1.1-2), readr (≥ 1.1.1), rlang (≥ 0.2.0), rstudioapi (≥ 0.7), 
# rgexf (≥ 0.15.3), scales (≥ 0.5.0), stringr (≥ 1.3.0), tibble (≥ 1.4.2), tidyr (≥ 0.8.0), viridis (≥ 0.5.0), visNetwork (≥ 2.0.3)
install_version("doFuture", version = "0.8.0", dependencies = FALSE, lib = libpath) #  globals (≥ 0.12.4), future (≥ 1.12.0), foreach (≥ 1.4.4), iterators (≥ 1.0.9), parallel, utils
install_version("DRR", version = "0.0.3", dependencies = FALSE, lib = libpath) # kernlab, CVST, Matrix, needed for dimRed
install_version("dimRed", version = "0.2.3", dependencies = FALSE, lib = libpath) # DRR, magrittr
install_version("diveRsity", version = "1.9.90", dependencies = FALSE, lib = libpath) # ggplot2, shiny, ggraph, Rcpp
install_version("DMwR", version = "0.4.1", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 2.10), methods, graphics, lattice (≥ 0.18-3), grid (≥ 2.10.1)
# Imports: 	xts (≥ 0.6-7), quantmod (≥ 0.3-8), zoo (≥ 1.6-4), abind (≥ 1.1-0), rpart (≥ 3.1-46), class (≥ 7.3-1), ROCR (≥ 1.0)
install_version("doParallel", version = "1.0.14", dependencies = FALSE, lib = libpath) # foreach, iterators
install_version("dtplyr", version = "0.0.3", dependencies = FALSE, lib = libpath) # dplyr, data.table, lazyeval, rlang
install_version("dtw", version = "1.20-1", dependencies = FALSE, lib = libpath) # proxy

# E

install_version("effects", version = "4.1-1", dependencies = FALSE, lib = libpath) # survey, estimability
install_version("expm", version = "0.999-4", dependencies = FALSE, lib = libpath) # Matrix
install_version("extrafont", version = "0.17", dependencies = FALSE, lib = libpath) # extrafontdb, Rttf2pt1

# F

install_version("fail", version = "1.3", dependencies = FALSE, lib = libpath) # BBmisc, checkmate
install_version("fBasics", version = "3042.89", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 2.15.1), timeDate, timeSeries
# Imports: 	stats, grDevices, graphics, methods, utils, MASS, spatial, gss, stabledist
install_version("ff", version = "2.2-14", dependencies = FALSE, lib = libpath) # bit
install_version("fields", version = "9.8-3", dependencies = FALSE, lib = libpath) # spam, maps
install_version("fitdistrplus", version = "1.0-14", dependencies = FALSE, lib = libpath) # MASS, npsurv
install_version("flexmix", version = "2.3-15", dependencies = FALSE, lib = libpath) # modeltools, nnet
install_version("futile.logger", version = "1.4.3", dependencies = FALSE, lib = libpath) # lambda.r, futile.options
install_version("future", version = "1.14.0", dependencies = FALSE, lib = libpath) # digest, globals, listenv
install_version("future.apply", version = "1.3.0", dependencies = FALSE, lib = libpath) # future, globals

# G

install_version("gam", version = "1.16.1", dependencies = FALSE, lib = libpath) # foreach
install_version("gbm", version = "2.1.5", dependencies = FALSE, lib = libpath) # gridExtra, lattice, survival
install_version("geiger", version = "2.0.6.2", dependencies = FALSE, lib = libpath)
# Depends: 	ape (≥ 3.0-6), R (≥ 2.15.0)
# Imports: 	MASS, mvtnorm, subplex, deSolve (≥ 1.7), digest, Rcpp (≥ 0.11.0), coda, ncbit, colorspace, methods
install_version("geoR", version = "1.7-5.2.1", dependencies = FALSE, lib = libpath) # needs MASS, sp, splancs, RandomFields
install_version("geoRglm", version = "0.9-11", dependencies = FALSE, lib = libpath) # needs geoR
install_version("geosphere", version = "1.5-10", dependencies = FALSE, lib = libpath) # needs sp
install_version("GGally", version = "1.4.0", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.1), ggplot2 (> 2.2.0)
# Imports: 	grDevices, grid, gtable (≥ 0.2.0), plyr (≥ 1.8.3), progress, RColorBrewer, reshape (≥ 0.8.5), 
# utils, rlang
install_version("ggbeeswarm", version = "0.6.0", dependencies = FALSE, lib = libpath) # needs beeswarm, vipor
install_version("ggdendro", version = "0.1-20", dependencies = FALSE, lib = libpath) # needs MASS, ggplot2
install_version("GGIR", version = "1.9-2", dependencies = FALSE, lib = libpath) # needs data.table, Rcpp
install_version("ggmap", version = "3.0.0", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.1.0), ggplot2 (≥ 2.2.0)
# Imports: 	RgoogleMaps, png, plyr, rjson, jpeg, digest, scales, dplyr, bitops, grid, glue, httr, stringr, purrr, magrittr, tibble, tidyr
install_version("ggridges", version = "0.5.1", dependencies = FALSE, lib = libpath)
# Imports: 	ggplot2 (≥ 2.2.0), grid (≥ 3.0.0), plyr (≥ 1.8.0), scales (≥ 0.4.1), withr (≥ 2.1.1)
install_version("glmmTMB", version = "0.2.3", dependencies = FALSE, lib = libpath) # needs methods, TMB (≥ 1.7.13), lme4 (≥ 1.1-18.9000), Matrix, nlme
install_version("glmnet", version = "2.0-18", dependencies = FALSE, lib = libpath) # needs Matrix, foreach
install_version("gstat", version = "2.0-2", dependencies = FALSE, lib = libpath)
# Imports: 	utils, stats, graphics, methods, lattice, sp (≥ 0.9-72), zoo, spacetime (≥ 1.0-0), FNN
install_version("gtx", version = "0.0.8", dependencies = FALSE, lib = libpath) # needs survival

# I

install_version("ifultools", version = "2.0-5", dependencies = FALSE, lib = libpath) # needs	MASS, methods, splus2R (≥ 1.2-0)
install_version("influenceR", version = "0.1.0", dependencies = FALSE, lib = libpath) # needs igraph, Matrix
install_version("irlba", version = "2.3.3", dependencies = FALSE, lib = libpath) # needs Matrix

# K 

install_version("kdecopula", version = "0.9.2", dependencies = FALSE, lib = libpath)
# needs  	lattice, locfit, qrng, Rcpp (≥ 0.11.2), graphics, grDevices, stats, utils, quadprog
install_version("kinship2", version = "1.8.4", dependencies = FALSE, lib = libpath) # needs Matrix, quadprog

# L

install_version("leaflet", version = "2.0.2", dependencies = FALSE, lib = libpath)
# Imports: 	base64enc, crosstalk, htmlwidgets, htmltools, magrittr, markdown, methods, png, RColorBrewer, 
# raster, scales (≥ 1.0.0), sp, stats, viridis (≥ 0.5.1)
install_version("leaflet.extras", version = "1.0.0", dependencies = FALSE, lib = libpath) # needs leaflet

# M

install_version("mapproj", version = "1.2.6", dependencies = FALSE, lib = libpath) # maps
# maxent not included in installation. Removed from CRAN due to repeated non-response to requests to fix check issues. 
install_version("MCMCglmm", version = "2.29", dependencies = FALSE, lib = libpath)
# Depends: 	Matrix, coda, ape
# Imports: 	corpcor, tensorA, cubature, methods
install_version("mda", version = "0.4-10", dependencies = FALSE, lib = libpath) # class
install_version("metap", version = "1.1", dependencies = FALSE, lib = libpath) # lattice, Rdpack
install_version("mi", version = "1.0", dependencies = FALSE, lib = libpath) # arm, Matrix

# NOTE: genefilter (needed for modeest) is a Bioconductor package ... see elsewhere for other Bioconductor package installations.
BiocManager::install("genefilter", lib = libpath)
# running this also installs other Bioconductor packages: ‘BiocGenerics’, ‘IRanges’, ‘S4Vectors’, ‘AnnotationDbi’, ‘annotate’, ‘Biobase’

# modeest needs statip
install_version("statip", version = "0.2.0", dependencies = FALSE, lib = libpath) #  bazar, clue, graphics, rpart, stats
install_version("modeest", version = "2.3.3", dependencies = FALSE, lib = libpath) # bazar, fBasics, genefilter, stable, stabledist, stats, statip
install_version("msm", version = "1.6.7", dependencies = FALSE, lib = libpath) # survival, mvtnorm, expm

# mvoutlier - needs robCompositions, installing here (+ missing deps)
install_version("pcaPP", version = "1.9-73", dependencies = FALSE, lib = libpath) # mvtnorm
install_version("rrcov", version = "1.4-7", dependencies = FALSE, lib = libpath) 
# Depends: 	R (≥ 2.10), robustbase (≥ 0.92.1), methods
# Imports: 	stats, stats4, mvtnorm, lattice, cluster, pcaPP
install_version("prabclus", version = "2.3-1", dependencies = FALSE, lib = libpath) #  spdep, spatialreg, bootstrap, maptools, foreign, mvtnorm
install_version("fpc", version = "2.2-3", dependencies = FALSE, lib = libpath)
# MASS, cluster, mclust, flexmix, prabclus, class, diptest, robustbase, kernlab, grDevices, graphics, methods, stats, utils, parallel
install_version("vcd", version = "1.4-4", dependencies = FALSE, lib = libpath) # stats, utils, MASS, grDevices, colorspace, lmtest
install_version("laeken", version = "0.5.0", dependencies = FALSE, lib = libpath) # boot, MASS
install_version("ranger", version = "0.11.2", dependencies = FALSE, lib = libpath) # Rcpp, Matrix
install_version("VIM", version = "4.8.0", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.1.0), colorspace, grid, data.table (≥ 1.9.4)
# Imports: 	car, grDevices, robustbase, stats, sp, vcd, MASS, nnet, e1071, methods, Rcpp, utils, graphics, laeken, ranger
install_version("NADA", version = "1.6-1", dependencies = FALSE, lib = libpath) # survival
install_version("zCompositions", version = "1.3.2-1", dependencies = FALSE, lib = libpath) # MASS, NADA, truncnorm
install_version("robCompositions", version = "2.1.0", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.0.0), robustbase, ggplot2, data.table, e1071, pls
# Imports: 	car, cvTools, rrcov, cluster, fpc, GGally, kernlab, MASS, mclust, Rcpp, sROC, tidyr, VIM, zCompositions
install_version("mvoutlier", version = "2.0.9", dependencies = FALSE, lib = libpath)
# Depends: 	sgeostat, R (≥ 2.14)
# Imports: 	robCompositions, robustbase

# N

install_version("ndjson", version = "0.7.0", dependencies = FALSE, lib = libpath) # Rcpp, data.table, dplyr, dtplyr
install_version("network", version = "1.15", dependencies = FALSE, lib = libpath) # tibble, magrittr
install_version("networkD3", version = "0.4", dependencies = FALSE, lib = libpath) # htmlwidgets, igraph, magrittr
install_version("neuralnet", version = "1.44.2", dependencies = FALSE, lib = libpath) # Deriv, MASS 
install_version("NMF", version = "0.21.0", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.0.0), methods, utils, pkgmaker (≥ 0.20), registry, rngtools (≥ 1.2.3), cluster
# Imports: 	graphics, stats, stringr (≥ 1.0.0), digest, grid, grDevices, gridBase, colorspace, RColorBrewer, foreach, doParallel, ggplot2, reshape2
install_version("np", version = "0.60-9", dependencies = FALSE, lib = libpath)

# O

install_version("openair", version = "2.6-5", dependencies = FALSE, lib = libpath)
# Imports: 	grid, rlang, dplyr, purrr, tidyr, mgcv, lattice, latticeExtra, lubridate, cluster, RColorBrewer, 
# mapproj, hexbin, Rcpp, grDevices, graphics, methods, stats, MASS, util
install_version("optparse", version = "1.6.2", dependencies = FALSE, lib = libpath) # getopt

# P

install_version("party", version = "1.3-3", dependencies = FALSE, lib = libpath) 
# Depends: 	R (≥ 3.0.0), methods, grid, stats, mvtnorm (≥ 1.0-2), modeltools (≥ 0.2-21), strucchange
# Imports: 	survival (≥ 2.37-7), coin (≥ 1.1-0), zoo, sandwich (≥ 1.1-1)
install_version("phangorn", version = "2.5.5", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.2.0), ape (≥ 5.0)
# Imports: 	quadprog, igraph (≥ 1.0), Matrix, parallel, methods, utils, stats, graphics, grDevices, fastmatch, magrittr, Rcpp (≥ 0.12.0)
install_version("pheatmap", version = "1.0.12", dependencies = FALSE, lib = libpath) # RColorBrewer, scales, gtable
install_version("picante", version = "1.8", dependencies = FALSE, lib = libpath) # ape, vegan, nlme
install_version("pillar", version = "1.4.2", dependencies = FALSE, lib = libpath) # cli, crayon, fansi, rlang, utf8, vctrs
install_version("plotly", version = "4.9.0", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.2.0), ggplot2 (≥ 3.0.0)
# Imports: 	tools, scales, httr, jsonlite (≥ 1.6), magrittr, digest, viridisLite, base64enc, htmltools (≥ 0.3.6), 
# htmlwidgets (≥ 1.3), tidyr, hexbin, RColorBrewer, dplyr, tibble, lazyeval (≥ 0.2.0), rlang, crosstalk, purrr, data.table, promises
install_version("plotmo", version = "3.5.5", dependencies = FALSE, lib = libpath) # Formula, plotrix, TeachingDemos
install_version("pls", version = "2.7-1", dependencies = FALSE, lib = libpath) # MASS, Rmpi, testthat, RUnit
install_version("polysat", version = "1.7-4", dependencies = FALSE, lib = libpath) # Rcpp

# R

install_version("R.oo", version = "1.22.0", dependencies = FALSE, lib = libpath) # R.methodsS3
install_version("R.utils", version = "2.9.0", dependencies = FALSE, lib = libpath) # R.oo, R.methodsS3
install_version("R2admb", version = "0.7.16", dependencies = FALSE, lib = libpath) # coda, lattice
install_version("R2WinBUGS", version = "2.1-21", depdencies = FALSE, lib = libpath) # coda, boot
install_version("rARPACK", version = "0.11-0", dependencies = FALSE, lib = libpath) # RSpectra
install_version("reticulate", version = "1.12", dependencies = FALSE, lib = libpath) # jsonlite, Rcpp, Matrix
install_version("rgrass7", version = "0.1-12", dependencies = FALSE, lib = libpath) # sp, XML
install_version("RInside", version = "0.2.15", dependencies = FALSE, lib = libpath) # Rcpp
install_version("rioja", version = "0.9-21", dependencies = FALSE, lib = libpath) # vegan, mgcv
install_version("rlas", version = "1.3.2", dependencies = FALSE, lib = libpath) # Rcpp, data.table
install_version("Rmisc", version = "1.5", dependencies = FALSE, lib = libpath) # lattice, plyr
install_version("RPMM", version = "1.25", dependencies = FALSE, lib = libpath) # cluster
install_version("RPostgreSQL", version = "0.6-2", dependencies = FALSE, lib = libpath) # DBI, also needs PostgreSQL
install_version("rsvd", version = "1.0.1", dependencies = FALSE, lib = libpath) # Matrix
install_version("Rtsne", version = "0.15", dependencies = FALSE, lib = libpath) # Rcpp
# install_version("rversions", version = "2.0.0", dependencies = FALSE) # curl, xml2

# S

install_version("satellite", version = "1.0.1", dependencies = FALSE, lib = libpath) # raster
install_version("shapefiles", version = "0.7", dependencies = FALSE, lib = libpath) # foreign
install_version("sctransform", version = "0.2.0", dependencies = FALSE, lib = libpath) # MASS, Matrix, methods, future, future.apply, ggplot2, reshape2, gridExtra, Rcpp
install_version("SDMTools", version = "1.1-221.1", dependencies = FALSE, lib = libpath) # R.utils (NOTE: ORPHANED)
install_version("seas", version = "0.5-2", dependencies = FALSE, lib = libpath) # MASS
install_version("sem", version = "3.1-9", dependencies = FALSE, lib = libpath) # matrixcalc, MASS, bott, mi
# seriation and missing deps
install_version("TSP", version = "1.1-7", dependencies = FALSE, lib = libpath) # foreach
install_version("gclus", version = "1.3.2", dependencies = FALSE, lib = libpath) # cluster
install_version("seriation", version = "1.2-7", dependencies = FALSE, lib = libpath) # # TSP, qap, grid, cluster, gclus, dendextend, colorspace, MASS, gplots, registry, methods, stats, grDevices
install_version("Seurat", version = "3.0.2", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.4.0), methods
# Imports: 	ape, cluster, cowplot, fitdistrplus, future, future.apply, ggplot2 (≥ 3.0.0), 
# ggrepel, ggridges, graphics, grDevices, grid, ica, igraph, irlba, KernSmooth, lmtest, 
# MASS, Matrix (≥ 1.2.14), metap, pbapply, plotly, png, RANN, RColorBrewer, Rcpp, reticulate, 
# rlang, ROCR, rsvd, Rtsne, scales, sctransform (≥ 0.2.0), SDMTools, stats, tools, tsne, utils

# sna needs statnet.common
install_version("statnet.common", version = "4.3.0", dependencies = FALSE, lib = libpath) # coda
install_version("sna", version = "2.4", dependencies = FALSE, lib = libpath) # statnet.common, network
install_version("snowfall", version = "1.84-6.1", dependencies = FALSE, lib = libpath) # snow
install_version("spatstat.data", version = "1.4-0", dependencies = FALSE, lib = libpath) # spatstat.utils
install_version("spatstat", version = "1.60-1", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.3.0), spatstat.data (≥ 1.4-0), stats, graphics, grDevices, utils, methods, nlme, rpart
# Imports: 	spatstat.utils (≥ 1.13-0), mgcv, Matrix, deldir (≥ 0.0-21), abind, tensor, polyclip (≥ 1.10-0), goftest
install_version("spgrass6", version = "0.8-9", dependencies = FALSE, lib = libpath) # sp, XML
install_version("ssgraph", version = "1.8", dependencies = FALSE, lib = libpath) # BDGraph
install_version("statip", version = "0.2.0", dependencies = FALSE, lib = libpath) # bazar, clue, rpart
install_version("streamR", version = "0.4.5", dependencies = FALSE, lib = libpath) # RCurl, rjson, ndjson

# T

install_version("tm", version = "0.7-6", dependencies = FALSE, lib = libpath) # NLP, Rcpp, slam, xml2
# TreePar needs TreeSim
install_version("TreeSim", version = "2.4", dependencies = FALSE, lib = libpath) # ape, geiger
install_version("TreePar", version = "3.3", dependencies = FALSE, lib = libpath) # ape, Matrix, subplex, TreeSim, deSolve

# U

install_version("umap", version = "0.2.2.0", dependencies = FALSE, lib = libpath) # reticulate, Rcpp, Rspectra

# V

install_version("vcfR", version = "1.8.0", dependencies = FALSE, lib = libpath)
# ape, dplyr, graphics, grDevices, magrittr, memuse, methods, pinfsc50, Rcpp, stats, stringr, tibble, utils, vegan, viridisLite

# VineCopula needs copula, which in turn depends on various upstream packages
install_version("copula", version = "0.999-19.1", dependencies = FALSE, lib = libpath)
# stats, graphics, methods, stats4, Matrix, lattice, colorspace, gsl, ADGofTest, stabledist (≥ 0.6-4), mvtnorm, pcaPP, pspline, numDeriv
install_version("VineCopula", version = "2.1.8", dependencies = FALSE, lib = libpath)
# graphics, grDevices, stats, utils, MASS, mvtnorm, network, methods, copula (≥ 0.999-16), kdecopula (≥ 0.8.0), ADGofTest,
# lattice, doParallel, parallel, foreach

# CRAN: Packages that need units / udunits2 ####

# udunits2 installation may need configure.args (change path as needed)

# install_version("udunits2", version = "0.13", dependencies = FALSE, 
#                configure.args='--with-udunits2-include=/home/jharriso/anaconda3/envs/puhtitest-env/include', lib = libpath)

# install_version("adegenet", version = "2.1.1", dependencies = FALSE, lib = libpath) # ‘shiny’, ‘seqinr’, ‘spdep’
# Depends: 	R (≥ 2.14), methods, ade4, Imports: 	utils, stats, grDevices, MASS, igraph, ape, shiny, ggplot2, seqinr, parallel, spdep, boot, reshape2, dplyr (≥ 0.4.1), vegan

# install_version("pegas", version = "0.11", dependencies = FALSE, lib = libpath) # ape, adegenet
# install_version("poppr", version = "2.8.3", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 2.15.1), adegenet (≥ 2.0.0)
# Imports: 	stats, graphics, grDevices, utils, vegan, ggplot2, phangorn, ape (≥ 3.1-1), igraph (≥ 1.0.0), methods, ade4, pegas, polysat, dplyr (≥ 0.4), rlang, boot, shiny, magrittr

# CRAN: Packages that need X11 ####
# note, rgl also needed for spatial packages

# install_version("rgl", version = "0.100.24", dependencies = FALSE, lib = libpath)
# Imports: 	graphics, grDevices, stats, utils, htmlwidgets, htmltools, knitr, jsonlite (≥ 0.9.20), 
# shiny, magrittr, crosstalk, manipulateWidget (≥ 0.9.0)
# install_version("longitudinalData", version = "2.4.1", dependencies = FALSE, lib = libpath) # methods, clv, class, rgl, utils, misc3d
# install_version("tkrplot", version = "0.0-24", dependencies = FALSE, lib = libpath)
# install_version("misc3d", version = "0.8-4", dependencies = FALSE, lib = libpath) # rgl, tkrplot, MASS

# TSclust needs wmtsa, which depends on various upstream packages
# install_version("wmtsa", version = "2.0-3", dependencies = FALSE, lib = libpath) # splus2R, ifultools, MASS
# install_version("TSclust", version = "1.2.4", dependencies = FALSE, lib = libpath) # wmtsa, pdc, cluster, locpol, KernSmooth, dtw, longitudinalData

# CRAN: Packages that need GDAL and PROJ4 ####

# This part is still unordered and needs completing
# note that some here also need units!

# install_version("rgdal", version = "1.4-4", dependencies = FALSE, lib = libpath) # sp
# install_version("units", version = "0.6-3", dependencies = FALSE, lib = libpath) # Rcpp, udunits2
# install_version("sf", version = "0.7-4", dependencies = FALSE, lib = libpath) # classInt, DBI, magrittr, Rcpp, units
# install_version("spdep", version = "1.1-2", dependencies = FALSE, lib = libpath) # sp, spData, sf
# also imports: deldir, boot (≥ 1.3-1), graphics, grDevices, utils, stats, Matrix, LearnBayes, MASS, coda, expm, gmodels, nlme

# install_version("spatialreg", version = "1.1-3", dependencies = FALSE, lib = libpath) # spdep, expm, coda, methods, MASS, boot, 
# splines, LearnBayes, nlme, gmodels
# install_version("hierfstat", version = "0.04-22", dependencies = FALSE, lib = libpath) # gtools, ade4, adegenet
# install_version("GWmodel", version = "2.1-1", dependencies = FALSE, lib = libpath)
# install_version("rgeos", version = "0.4-3", dependencies = FALSE, lib = libpath) # sp
# install_version("lidR", version = "2.0.3", dependencies = FALSE, lib = libpath)
# Imports: 	data.table, future (≥ 1.10.0), gdalUtils, geometry, glue, grDevices, gstat, lazyeval, imager, 
# Rcpp (≥ 0.11.0), RCSF, rgeos, rgdal, rgl, rlas (≥ 1.2.5), sf, stats, tools, utils
# install_version("leafpm", version = "0.1.0", dependencies = FALSE, lib = libpath) # dplyr, htmltools, htmlwidgets, jsonlite, leaflet, sf
# install_version("mapedit", version = "0.5.0", dependencies = FALSE, lib = libpath)
# Imports: 	dplyr, htmltools (≥ 0.3), htmlwidgets, jsonlite, leaflet (≥ 2.0.1), leaflet.extras (≥ 1.0), leafpm, mapview, miniUI, sf (≥ 0.5-2), shiny

# install_version("RSAGA", version = "1.3.0", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 2.10), gstat, shapefiles, plyr
# Imports: 	stats, utils, rgdal, stringr, magrittr

# install_version("leafem", version = "0.0.1", dependencies = FALSE, lib = libpath) # htmltools (≥ 0.3), htmlwidgets, leaflet (≥ 2.0.1), raster, sf, sp
# install_version("leafpop", version = "0.0.1", dependencies = FALSE, lib = libpath) # base64enc, brew, gdalUtils, htmlwidgets, Rcpp (≥ 1.0.0), svglite, uuid
# install_version("mapview", version = "2.7.0", dependencies = FALSE, lib = libpath)
# Imports: 	base64enc, brew, htmltools, htmlwidgets, lattice, leafem, leaflet (≥ 2.0.0), leafpop, png, 
# raster, Rcpp (≥ 0.11.3), satellite, scales (≥ 0.2.5), sf, sp, svglite, uuid, viridisLite, webshot

# configure: error: proj_api.h not found in standard or given locations.

# rgdal - paths will need modifying!
# install.packages('rgdal', type = "source", configure.args=c('--with-proj-include=/usr/local/include','--with-proj-lib=/usr/local/lib'), lib = libpath)

# install_version("spatial.tools", version = "1.6.0", dependencies = FALSE, lib = libpath) # compiler, doParallel, foreach, iterators, mmap, raster, rgdal, sp, abind

# CRAN: Packages that need Java ####

# install_version("rJava", version = "0.9-11", dependencies = FALSE, lib = libpath)
# Make sure you have Java Development Kit installed and correctly registered in R.
# If in doubt, re-run "R CMD javareconf" as root. NOTE: TRIED, didn't work
# had openjdk=11.0.1 in yaml file
# install_version("JavaGD", version = "0.6-1.1", dependencies = FALSE, lib = libpath) # needs rJava

# install_version("RWekajars", version = "3.9.3-1", dependencies = FALSE, lib = libpath)
# install_version("RWeka", version = "0.4-40", dependencies = FALSE, lib = libpath)
# install_version("FSelector", version = "0.31", dependencies = FALSE, lib = libpath) # needs randomForest, RWeka, digest, entropy

# CRAN: Packages that need TBB ####

# install_version("RcppParallel", version = "4.4.3", dependencies = FALSE, lib = libpath)
# install_version("dtwclust", version = "5.5.3", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.2.0), methods, proxy (≥ 0.4-16), dtw
# Imports: 	parallel, stats, utils, bigmemory, clue, cluster, dplyr, flexclust, foreach, ggplot2, ggrepel, 
# Matrix, nloptr, RSpectra, Rcpp, RcppParallel (≥ 4.4.0), reshape2, shiny, shinyjs

# CRAN: Packages that need MPI ####

# install_version("Rmpi", version = "0.6-9", dependencies = FALSE, lib = libpath) 

# Rmpi installation may require configure.args, e.g. something like (modify paths for own purposes)
# install.packages('Rmpi',configure.args = '--with-Rmpi-include=/usr/include/openmpi-x86_64 --with-Rmpi-libpath=/usr/lib64/openmpi/lib --with-Rmpi-type=OPENMPI', lib = libpath)

# install_version("doMPI", version = "0.2.2", dependencies = FALSE, lib = libpath) # foreach, iterators, Rmpi
# install_version("pbdMPI", version = "0.3-9", dependencies = FALSE, lib = libpath) # float, rlecuyer
# install_version("pbdSLAP", version = "0.2-6", dependencies = FALSE, lib = libpath) # pbdMPI, rlecuyer
# install_version("pbdBASE", version = "0.5-0", dependencies = FALSE, lib = libpath) # pbdMPI, pbdSLAP
# install_version("pbdMAT", version = "0.5-1", dependencies = FALSE, lib = libpath) # pbdBASE, pbdMPI
# install_version("pbdDEMO", version = "0.3-1", dependencies = FALSE, lib = libpath) # pbdBASE, pbdMAT, pbdMPI


# CRAN: Packages that need GMP ####

# install_version("gmp", version = "0.5-13.5", dependencies = FALSE, lib = libpath)

# CRAN: Packages that need Magick++ / ImageMagick ####

# install_version("magick", version = "2.0", dependencies = FALSE, lib = libpath) # Rcpp, magrittr, curl
# install_version("animation", version = "2.6", dependencies = FALSE, lib = libpath) # magick

# install_version("phytools", version = "0.6-99", dependencies = FALSE, lib = libpath)
# Depends: 	R (≥ 3.2.0), ape (≥ 4.0), maps
# Imports: 	animation, clusterGeneration, coda, combinat, expm, graphics, grDevices, gtools, MASS, 
# methods, mnormt, nlme, numDeriv, phangorn (≥ 2.3.1), plotrix, scatterplot3d, stats, utils

# CRAN: Packages that need Cairo ####

# install_version("gdtools", version = "0.1.9", dependencies = FALSE, lib = libpath) # Rcpp, withr
# install_version("svglite", version = "1.2.2", dependencies = FALSE, lib = libpath) # Rcpp, gdtools

# CRAN: Packages that need NetCDF ####

# install_version("ncdf4", version = "1.16.1", dependencies = FALSE, lib = libpath) # needs netcdf library v. 4.1 or later

# CRAN: Packages that need Poppler ####

# install_version("pdftools", version = "2.2", dependencies = FALSE, lib = libpath) # needs Rcpp, qpdf

# CRAN: Packages that need JAGS ####

# install_version("rjags", version = "4-8", dependencies = FALSE, lib = libpath) # coda
# install_version("runjags", version = "2.0.4-2", dependencies = FALSE, lib = libpath) # lattice, coda

# CRAN: Packages that need MySQL / MariaDB-Connector ####

# install_version("RMySQL", version = "0.10.17", dependencies = FALSE, lib = libpath) # DBI (Note: legacy package, RmariaDB has modern MySQL client)

# CRAN: Packages that need libtiff ####

# install_version("rtiff", version = "1.4.6", dependencies = FALSE, lib = libpath) # pixmap
# install_version("sendplot", version = "4.0.0", dependencies = FALSE, lib = libpath) # rtiff

# Bioconductor: most packages (NOTE1: DON'T AUTO-RUN + NOTE2: SET BIOCONDUCTOR VERSION) ####

# Bioconductor version control vs CRAN version control is tricky to manage.
# installing Bioconductor packages will override previously installed CRAN package versions!
# RUNNING THESE CARELESSLY MIGHT RISK BREAKING SOMETHING ELSE.

# For R 3.5.1, Bioconductor version set to 3.8

# Bioconductor packages already installed:
# ‘BiocGenerics’, 'genefilter', ‘IRanges’, ‘S4Vectors’, ‘AnnotationDbi’, ‘annotate’, ‘Biobase’

BiocManager::install("affy", lib = libpath)
BiocManager::install("oligo", lib = libpath) # in Conda, gives this error:

# Error: package or namespace load failed for ‘affxparser’ in dyn.load(file, DLLpath = DLLpath, ...):
# unable to load shared object '/home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library/affxparser/libs/affxparser.so':
# (However, seems to work outside my minimal conda-env, so let's see)

# installing oligo also compiles the following Bioconductor packages:
# 'affyio', 'BiocInstaller', 'BiocParallel', 'BiocVersion', 'Biostrings', 'DelayedArray',
# 'GenomeInfoDb', 'GenomeInfoDbData', 'GenomicRanges', 'oligoClasses', 'preprocessCore',
# 'SummarizedExperiment', 'XVector', 'zlibbioc'

BiocManager::install("airway", lib = libpath)
BiocManager::install("AnnotationFilter", lib = libpath)
BiocManager::install("AnnotationForge", lib = libpath)
BiocManager::install("AnnotationHub", lib = libpath) # also installs Bioconductor package interactiveDisplaybase
BiocManager::install("BiocGenerics", lib = libpath)
BiocManager::install("BiocNeighbors", lib = libpath)
BiocManager::install("BiocStyle", lib = libpath)
BiocManager::install("bioDist", lib = libpath)
BiocManager::install("biomaRt", lib = libpath)
BiocManager::install("biovizBase", lib = libpath)

# installing biovizBase also installs following Bioconductor packages:
# ‘rtracklayer’, ‘BSgenome’, ‘ProtGenerics’, ‘Rsamtools’, ‘GenomicAlignments’, ‘GenomicFeatures’, ‘VariantAnnotation’, ‘ensembldb’

BiocManager::install("BSgenome.Dmelanogaster.UCSC.dm3", lib = libpath)
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19", lib = libpath)

# there is a CRAN package called "deconstructSigs" that depends on more than one Bioconductor package to function.
# added here...
install_version("deconstructSigs", version = "1.8.0", dependencies = FALSE, lib = libpath) 
# reshape2, BSgenome, BSgenome.Hsapiens.UCSC.hg19, GenomeInfoDb, grDevices, graphics, utils

BiocManager::install("bumphunter", lib = libpath) # also installs Bioconductor package limma
BiocManager::install("Category", lib = libpath) # also installs Bioconductor packages graph, RBGL, GSEABase
BiocManager::install("cummeRbund", lib = libpath) # also installs Bioconductor package Gviz
BiocManager::install("DESeq", lib = libpath) # also installs Bioconductor package geneplotter
BiocManager::install("DESeq2", lib = libpath)
BiocManager::install("destiny", lib = libpath) # also installs CRAN packages ggthemes, smoother
BiocManager::install("DEXSeq", lib = libpath)
BiocManager::install("FDb.InfiniumMethylation.hg19", lib = libpath)
# also installs Bioconductor packages ‘TxDb.Hsapiens.UCSC.hg19.knownGene’, ‘org.Hs.eg.db’
BiocManager::install("org.Dm.eg.db", lib = libpath)
BiocManager::install("TxDb.Dmelanogaster.UCSC.dm3.ensGene", lib = libpath)
BiocManager::install("fission", lib = libpath)
BiocManager::install("gage", lib = libpath) # also installs Bioconductor package KEGGREST
BiocManager::install("gageData", lib = libpath)
BiocManager::install("gcrma", lib = libpath)
BiocManager::install("gdsfmt", lib = libpath)
BiocManager::install("geneLenDataBase", lib = libpath)
BiocManager::install("ggbio", lib = libpath) # also installs Bioconductor package OrganismDbi
BiocManager::install("goseq", lib = libpath)
BiocManager::install("GSEABase", lib = libpath)
BiocManager::install("GSVA", lib = libpath) # also installs shinythemes
BiocManager::install("HSMMSingleCell", lib = libpath)
BiocManager::install("IRanges", lib = libpath)
BiocManager::install("KEGGgraph", lib = libpath)
BiocManager::install("MAST", lib = libpath)
BiocManager::install("mixOmics", lib = libpath)
BiocManager::install("monocle", lib = libpath) # also installs sparsesvd, docopt, VGAM, DDRTree, fastICA, densityClust, qlcMatrix, biocViews
BiocManager::install("MutationalPatterns", lib = libpath)
BiocManager::install("netbiov", lib = libpath)
BiocManager::install("pathview", lib = libpath)
BiocManager::install("PFAM.db", lib = libpath)
BiocManager::install("ReportingTools", lib = libpath)
BiocManager::install("ROC", lib = libpath)
BiocManager::install("SAGx", lib = libpath)
BiocManager::install("SC3", lib = libpath) # also installs CRAN package WriteXLS
BiocManager::install("SCnorm", lib = libpath) # also installs CRAN package moments
BiocManager::install("seqLogo", lib = libpath)
BiocManager::install("SingleCellExperiment", lib = libpath)
BiocManager::install("singscore", lib = libpath) # also installs ggsci
BiocManager::install("SIFT.Hsapiens.dbSNP132", lib = libpath)
BiocManager::install("simpleaffy", lib = libpath)
BiocManager::install("sleuth", lib = libpath)
BiocManager::install("SNPlocs.Hsapiens.dbSNP.20101109", lib = libpath)
BiocManager::install("SNPRelate", lib = libpath)
BiocManager::install("snpStats", lib = libpath)
BiocManager::install("sva", lib = libpath)

# Bioconductor: packages with external dependencies ####

# packages that need TBB

# BiocManager::install("dada2", lib = libpath) # RcppParallel

# packages that need zlib (or depend on hdf5 libs that can only be installed using zlib)

# BiocManager::install("beachmat", lib = libpath) # also installs ‘Rhdf5lib’, ‘rhdf5’, ‘HDF5Array’
# BiocManager::install("biomformat", lib = libpath)
# BiocManager::install("DelayedMatrixStats", lib = libpath)
# BiocManager::install("DiffBind", lib = libpath) 
# also installs Bioconductor packages ‘Rgraphviz’, ‘ShortRead’, ‘GOstats’, ‘GO.db’, ‘pheatmap’, ‘edgeR’, ‘systemPipeR’
# BiocManager::install("FlowSorted.Blood.450k", lib = libpath)
# also installs dependencies ‘Rhdf5lib’, ‘multtest’, ‘rhdf5’, ‘siggenes’, ‘illuminaio’, ‘DelayedMatrixStats’, ‘GEOquery’, ‘HDF5Array’, ‘minfi’
# BiocManager::install("IlluminaHumanMethylation450kanno.ilmn12.hg19", lib = libpath)
# BiocManager::install("lumi", lib = libpath) # also installs Bioconductor package methylumi
# BiocManager::install("mzR", lib = libpath)
# BiocManager::install("phyloseq", lib = libpath)
# BiocManager::install("scater", lib = libpath) # SingleCellExperiment, beachmat
# BiocManager::install("scran", lib = libpath)
# BiocManager::install("wateRmelon", lib = libpath)
# BiocManager::install("chipseq", lib = libpath) # also installs Biocondcutor package ShortRead

# packages that need Cairo

# BiocManager::install("scde", lib = libpath)  # also installs CRAN packages Lmoments, distillery, Cairo, RMTstat, extRemes, pcaMethods

# update everything again ####
update.packages()
# misc notes ####

# function for package installations from CRAN
# (while nifty, doesn't enable installation of specific versions)

# ipak <- function(pkg){
#  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
#  if (length(new.pkg)) 
#    install.packages(new.pkg, dependencies = TRUE)
#  sapply(pkg, require, character.only = TRUE)
# }

# CRANpackages <- c(...)
# ipak(CRANpackages)

# GitHub installation using devtools?
# devtools::install_github(repo = "catboost/catboost", subdir = "catboost/R-package", ref = "v0.8.1.1")
