# PUHTI R-ENV 
# BLOCK-BY-BLOCK PACKAGE INSTALLATIONS
# Jesse Harrison June-July 2019

# This script attempts to compile packages included in Taito's r-env and r-spatialenv while updating
# everything to a more recent version. With the exception of devtools, the installations are done with
# dependencies set to FALSE for stricter version control.

# PACKAGE DEPS LISTED AS ANNOTATIONS!
# Packages installed with devtools (deps = TRUE) are commented out, change if necessary.
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

# TESTING ONLY: remove all user-installed packages ####

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

# install devtools ####

# keeping dependencies = TRUE for this part and then updating to latest. Disabled (mostly) for everything else for stricter version control.

# during installation, may encounter following error (concerning package fs):
# ERROR: failed to lock directory ‘/home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library’ for modifying
# Try removing ‘/home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library/00LOCK-fs’

install.packages("devtools", "/home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library", dependencies = TRUE)

# update everything to latest version ####
update.packages()


# Bioconductor version settings ####

# Each Bioconductor release is designed to work with a specific version of R.

# BiocManager::install(version = "3.8") # for R 3.5.1
# BiocManager::install(version = "3.9") # for R 3.6.0 

# load devtools ####

library(devtools)

# CRAN: low-level installations ####

# versions were latest on 28.06.2019
# dependencies = FALSE not really needed for these, but just in case...

install_version("abind", version = "1.4-5", dependencies = FALSE)
install_version("acepack", version = "1.4.1", dependencies = FALSE)
install_version("ADGofTest", version = "0.3", dependencies = FALSE)
install_version("aggregation", version = "1.0.1", dependencies = FALSE)
install_version("ash", version = "1.0-15", dependencies = FALSE)
install_version("assertive.base", version = "0.0-7", dependencies = FALSE)
# install_version("assertthat", version = "0.2.1", dependencies = FALSE)
# install_version("base64enc", version = "0.1-3", dependencies = FALSE)
install_version("batch", version = "1.1-5", dependencies = FALSE)
install_version("bdsmatrix", version = "1.3-3", dependencies = FALSE)
install_version("beanplot", version ="1.2", dependencies = FALSE)
install_version("beeswarm", version = "0.2.3", dependencies = FALSE)
install_version("BH", version = "1.69.0-1", dependencies = FALSE)
install_version("BiasedUrn", version = "1.07", dependencies = FALSE)
install_version("bigmemory.sri", version = "0.1.3", dependencies = FALSE)
install_version("bindr", version = "0.1.1", dependencies = FALSE)
install_version("bit", version = "1.1-14", dependencies = FALSE)
install_version("bit64", version = "0.9-7", dependencies = FALSE)
# install_version("bitops", version = "1.0-6", dependencies = FALSE)
install_version("blob", version = "1.1.1", dependencies = FALSE)
# install_version("boot", version = "1.3-22", dependencies = FALSE)
# install_version("brew", version = "1.0-6", dependencies = FALSE)
install_version("calibrate", version = "1.7.2", dependencies = FALSE)
install_version("carData", version = "3.0-2", dependencies = FALSE)
install_version("chron", version = "2.3-53", dependencies = FALSE)
# install_version("class", version = "7.3-15", dependencies = FALSE)
# install_version("cluster", version = "2.1.0", dependencies = FALSE)
# install_version("codetools", version = "0.2-16", dependencies = FALSE)
install_version("colorspace", version = "1.4-1", dependencies = FALSE)
install_version("combinat", version = "0.0-8", dependencies = FALSE)
install_version("corpcor", version = "1.6.9", dependencies = FALSE)
install_version("data.table", version = "1.12.2", dependencies = FALSE)
install_version("DBI", version = "1.0.0", dependencies = FALSE)
install_version("deldir", version = "0.1-22", dependencies = FALSE)
install_version("DEoptimR", version = "1.0-8", dependencies = FALSE)
install_version("Deriv", version = "3.8.5", dependencies = FALSE)
install_version("deSolve", version = "1.23", dependencies = FALSE)
install_version("dichromat", version = "2.0-0", dependencies = FALSE)
install_version("dotCall64", version = "1.0-0", dependencies = FALSE)
install_version("dynamicTreeCut", version = "1.63-1", dependencies = FALSE)
install_version("ellipse", version = "0.4.1", dependencies = FALSE)
install_version("entropy", version = "1.2.1", dependencies = FALSE)
install_version("estimability", version = "1.3", dependencies = FALSE)
install_version("extrafontdb", version = "1.0", dependencies = FALSE)
install_version("fastcluster", version = "1.1.25", dependencies = FALSE)
install_version("fastmatch", version = "1.1-0", dependencies = FALSE)
install_version("fdrtool", version = "1.2.15", dependencies = FALSE)
install_version("float", version = "0.2-2", dependencies = FALSE) # NOTE: newest (0.2-3) needs R 3.6.0
install_version("fmsb", version = "0.6.3", dependencies = FALSE)
install_version("FNN", version = "1.1.3", dependencies = FALSE)
install_version("fracdiff", version = "1.4-2", dependencies = FALSE)
install_version("fontcm", version = "1.1", dependencies = FALSE)
install_version("formatR", version = "1.7", dependencies = FALSE)
# install_version("foreign", version = "0.8-71", dependencies = FALSE)
install_version("Formula", version = "1.2-3", dependencies = FALSE)
install_version("fracdiff", version = "1.4-2", dependencies = FALSE)
install_version("futile.options", version = "1.0.1", dependencies = FALSE)
install_version("gbRd", version = "0.4-11", dependencies = FALSE)
install_version("generics", version = "0.0.2", dependencies = FALSE)
install_version("getopt", version = "1.20.3", dependencies = FALSE)
install_version("glasso", version = "1.10", dependencies = FALSE)
# install_version("glue", version = "1.3.1", dependencies = FALSE)
install_version("goftest", version = "1.1-1", dependencies = FALSE)
install_version("gower", version = "0.2.1", dependencies = FALSE)
install_version("gridBase", version = "0.4-7", dependencies = FALSE)
install_version("gsl", version = "2.1-6", dependencies = FALSE)
install_version("gss", version = "2.1-10", dependencies = FALSE)
install_version("gtable", version = "0.3.0", dependencies = FALSE)
install_version("gtools", version = "3.8.1", dependencies = FALSE)
install_version("hwriter", version = "1.3.2", dependencies = FALSE)
install_version("ica", version = "1.0-2", dependencies = FALSE)
install_version("inline", version = "0.3.15", dependencies = FALSE)
install_version("intervals", version = "0.15.1", dependencies = FALSE)
install_version("iterators", version = "1.0.10", dependencies = FALSE)
install_version("jpeg", version = "0.1-8", dependencies = FALSE)
install_version("kernlab", version = "0.9-27", dependencies = FALSE)
# install_version("KernSmooth", version = "2.23-15", dependencies = FALSE)
install_version("labeling", version = "0.3", dependencies = FALSE)
install_version("lattice", version = "0.20-38", dependencies = FALSE)
install_version("LearnBayes", version = "2.15.1", dependencies = FALSE)
install_version("listenv", version = "0.7.0", dependencies = FALSE)
install_version("lmodel2", version = "1.7-3", dependencies = FALSE)
install_version("locpol", version = "0.7-0", dependencies = FALSE)
install_version("lpSolve", version = "5.6.13.1", dependencies = FALSE)
install_version("lsei", version = "1.2-0", dependencies = FALSE)
install_version("manipulate", version = "1.0.1", dependencies = FALSE)
install_version("maps", version = "3.3.0", dependencies = FALSE)
install_version("matrixcalc", version = "1.0-3", dependencies = FALSE)
install_version("matrixStats", version = "0.54.0", dependencies = FALSE)
install_version("mclust", version = "5.4.4", dependencies = FALSE)
install_version("memuse", version = "4.0-0", dependencies = FALSE)
install_version("mmap", version = "0.6-17", dependencies = FALSE)
install_version("mnormt", version = "1.5-5", dependencies = FALSE)
install_version("modeltools", version = "0.2-22", dependencies = FALSE)
install_version("modes", version = "0.7.0", dependencies = FALSE)
install_version("mvtnorm", version = "1.0-11", dependencies = FALSE)
install_version("NbClust", version = "3.0", dependencies = FALSE)
install_version("ncbit", version = "2013.03.29", dependencies = FALSE)
# install_version("nnet", version = "7.3-12", dependencies = FALSE)
install_version("nnls", version = "1.4", dependencies = FALSE)
install_version("nleqslv", version = "3.3.2", dependencies = FALSE)
# install_version("nlme", version = "3.1-140", dependencies = FALSE)
install_version("nloptr", version = "1.2.1", dependencies = FALSE)
install_version("NLP", version = "0.2-0", dependencies = FALSE)
install_version("nor1mix", version = "1.3-0", dependencies = FALSE)
install_version("nplplot", version = "4.5", dependencies = FALSE)
install_version("numDeriv", version = "2016.8-1.1", dependencies = FALSE)
install_version("pbapply", version = "1.4-0", dependencies = FALSE)
install_version("pbivnorm", version = "0.6.0", dependencies = FALSE)
install_version("pdc", version = "1.0.3", dependencise = FALSE)
install_version("permute", version = "0.9-5", dependencies = FALSE)
install_version("pixmap", version = "0.4-11", dependencies = FALSE)
install_version("plogr", version = "0.2.0", dependencies = FALSE)
install_version("plotrix", version = "3.7-6", dependencies = FALSE)
install_version("pinfsc50", version = "1.1.0", dependencise = FALSE)
install_version("pixmap", version = "0.4-11", dependencies = FALSE)
install_version("png", version = "0.1-7", dependencies = FALSE)
install_version("PoiClaClu", version = "1.0.2.1", dependencies = FALSE)
install_version("polyclip", version = "1.10-0", dependencies = FALSE)
install_version("pracma", version = "2.2.5", dependencies = FALSE)
# install_version("praise", version = "1.0.0", dependencies = FALSE)
install_version("PresenceAbsence", version = "1.1.9", dependencies = FALSE)
install_version("princurve", version = "2.1.4", dependencies = FALSE)
install_version("profileModel", version = "0.6.0", dependencies = FALSE)
install_version("proto", version = "1.0.0", dependencies = FALSE)
install_version("proxy", version = "0.4-23", dependencies = FALSE)
install_version("pspline", version = "1.0-18", dependencies = FALSE)
install_version("pvclust", version = "2.0-0", dependencies = FALSE)
install_version("qrng", version = "0.0-5", dependencies = FALSE)
install_version("quadprog", version = "1.5-7", dependencies = FALSE)
install_version("qvcalc", version = "1.0.0", dependencies = FALSE)
install_version("R.methodsS3", version = "1.7.1", dependencies = FALSE)
install_version("RandomFieldsUtils", version = "0.5.3", dependencies = FALSE)
install_version("RANN", version = "2.6.1", dependencies = FALSE)
# install_version("rematch", version = "1.0.1", dependencies = FALSE)
install_version("RColorBrewer", version = "1.1-2", dependencies = FALSE)
install_version("Rcpp", version = "1.0.1", dependencies = FALSE)
install_version("rjson", version = "0.2.20", dependencies = FALSE)
# install_version("RJSONIO", version = "1.3-1.2", dependencies = FALSE) # ORPHANED - was alternative to rsjon
install_version("rlecuyer", version = "0.3-4", dependencies = FALSE)
install_version("rmutil", version = "1.1.3", dependencies = FALSE)
# install_version("rpart", version = "4.1-15", dependencies = FALSE)
install_version("Rttf2pt1", version = "1.3.7", dependencies = FALSE)
install_version("RUnit", version = "0.4.32", dependencies = FALSE)
install_version("scatterplot3d", version = "0.3-41", dependencies = FALSE)
install_version("segmented", version = "1.0-0", dependencies = FALSE)
install_version("settings", version = "0.2.4", dependencies = FALSE)
install_version("sfsmisc", version = "1.1-4", dependencies = FALSE)
install_version("shape", version = "1.4.4", dependencies = FALSE)
install_version("slam", version = "0.1-45", dependencies = FALSE)
install_version("snow", version = "0.4-3", dependencies = FALSE)
install_version("sourcetools", version = "0.1.7", dependencies = FALSE)
install_version("sp", version = "1.3-1", dependencies = FALSE)
install_version("spatstat.utils", version = "1.13-0", dependencies = FALSE)
install_version("spData", version = "0.3.0", dependencies = FALSE)
install_version("SparseM", version = "1.77", dependencies = FALSE)
# install_version("spatial", version = "7.3-11", dependencies = FALSE)
install_version("splus2R", version = "1.2-2", dependencies = FALSE)
install_version("SQUAREM", version = "2017.10-1", dependencies = FALSE)
install_version("stabledist", version = "0.7-1", dependencies = FALSE)
install_version("statmod", version = "1.4.32", dependencies = FALSE)
install_version("subplex", version = "1.5-4", dependencies = FALSE)
install_version("SuppDists", version = "1.1-9.4", dependencies = FALSE) # ORPHANED
# install_version("survival", version = "2.44-1.1", dependencies = FALSE)
install_version("TeachingDemos", version = "2.10", dependencies = FALSE)
install_version("tensor", version = "1.5", dependencies = FALSE)
install_version("tensorA", version = "0.36.1", dependencies = FALSE)
install_version("timeDate", version = "3043.102", dependencies = FALSE)
install_version("tsne", version = "0.1-3", dependencies = FALSE)
install_version("uroot", version = "2.0-10", dependencies = FALSE)
# install_version("uuid", version = "0.1-2", dependencies = FALSE)
install_version("vipor", version = "0.4.5", dependencies = FALSE)
install_version("viridisLite", version = "0.3.0", dependencies = FALSE)
# install_version("withr", version = "2.1.2", dependencies = FALSE)
install_version("zip", version = "2.0.3", dependencies = FALSE)

# CRAN: pkgmaker (+ deps) and rngtools ####

# pkgmaker + deps
install_version("bibtex", version = "0.4.2", dependencies = FALSE)
install_version("registry", version = "0.5-1", dependencies = FALSE)
install_version("xtable", version = "1.8-4", dependencies = FALSE)
install_version("pkgmaker", version = "0.27", dependencies = FALSE)
# Depends: 	R (≥ 3.0.0), methods, stats, registry
# Imports: 	tools, grDevices, utils, graphics, codetools, digest, stringi, magrittr, stringr, xtable, withr, bibtex (≥ 0.4)

# rngtools (needs pkgmaker)
install_version("rngtools", version = "1.4", dependencies = FALSE)
# NOTE: latest Version (1.3.1.1) Depends: 	R (≥ 3.6.0), methods, pkgmaker (≥ 0.20)

# CRAN: tidyverse (+ missing deps) ####

# tidyverse has many deps, going through them first

install_version("tidyselect", version = "0.2.5", dependencies = FALSE) # BH and plogr
install_version("dplyr", version = "0.8.3", dependencies = FALSE) # tidyselect
install_version("tidyr", version = "0.8.3", dependencies = FALSE) 
# dplyr (≥ 0.7.0), glue, magrittr, purrr, Rcpp, rlang, stringi, tibble, tidyselect (≥ 0.2.5)

install_version("dbplyr", version = "1.4.2", dependencies = FALSE) # DBI
install_version("cellranger", version = "1.1.0", dependencies = FALSE) # rematch, tibble
install_version("ellipsis", version = "0.2.0.1", dependencies = FALSE) # rlang
install_version("forcats", version = "0.4.0", dependencies = FALSE) # ellipsis

install_version("plyr", version = "1.8.4", dependencies = FALSE) # Rcpp
install_version("reshape2", version = "1.4.3", dependencies = FALSE) # plyr
install_version("broom", version = "0.5.2", dependencies = FALSE) # generics, reshape2, tidyr

install_version("munsell", version = "0.5.0", dependencies = FALSE) # colorspace
install_version("scales", version = "1.0.0", dependencies = FALSE) # labeling, munsell, RColorBrewer

# install_version("mgcv", version = "1.8-28", dependencies = FALSE) # nlme
install_version("ggplot2", version = "3.2.0", dependencies = FALSE)
# Imports: 	digest, grDevices, grid, gtable (≥ 0.1.1), lazyeval, MASS, mgcv, reshape2, rlang (≥ 0.3.0), 
# scales (≥ 0.5.0), stats, tibble, viridisLite, withr (≥ 2.0.0)

install_version("hms", version = "0.4.2", dependencies = FALSE) # pkgconfig, rlang
install_version("readr", version = "1.3.1", dependencies = FALSE) # Rcpp (≥ 0.12.0.5), tibble, hms (≥ 0.4.1), R6, clipr, crayon, methods

# install_version("prettyunits", version = "1.0.2", dependencies = FALSE) # magrittr, assertthat, methods
install_version("progress", version = "1.2.2", dependencies = FALSE) #  hms, prettyunits, R6, crayon

# haven and readxl installations are a little problematic (on conda at least), below is one solution.
# the vanilla installations give this type of error: 

# install_version("haven", version = "2.1.1", dependencies = FALSE)
# Error: package or namespace load failed for ‘haven’ in dyn.load(file, DLLpath = DLLpath, ...):
# unable to load shared object '/home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library/haven/libs/haven.so': (OR: readxl.so)
# /home/jharriso/anaconda3/envs/puhtitest-env/lib/R/library/haven/libs/haven.so: undefined symbol: libiconv

withr::with_makevars(c(PKG_LIBS = "-liconv"), install_version("haven", version = "2.1.1", dependencies = FALSE), assignment = "+=")
# forcats (≥ 0.2.0), hms, Rcpp (≥ 0.11.4), readr (≥ 0.1.0), tibble
withr::with_makevars(c(PKG_LIBS = "-liconv"), install_version("readxl", version = "1.3.1", dependencies = FALSE), assignment = "+=")
# cellranger, Rcpp (≥ 0.12.18), tibble (≥ 1.3.1), utils

install_version("lubridate", version = "1.7.4", dependencies = FALSE) # stringr, Rcpp (≥ 0.12.13)
install_version("modelr", version = "0.1.4", dependencies = FALSE) # broom, dplyr, magrittr, purrr (≥ 0.2.2), rlang (≥ 0.2.0), tibble, tidyr (≥ 0.8.0)
# install_version("processx", version = "3.3.1", dependencies = FALSE) # needs ps, R6
# install_version("callr", version = "3.2.0", dependencies = FALSE) # needs processx, R6
install_version("reprex", version = "0.3.0", dependencies = FALSE) # callr (≥ 2.0.0), clipr (≥ 0.4.0), fs, rlang, rmarkdown, utils, whisker, withr

# then tidyverse
install_version("tidyverse", version = "1.2.1", dependencies = FALSE) 
# Imports: 	broom (≥ 0.4.2), cli (≥ 1.0.0), crayon (≥ 1.3.4), dplyr (≥ 0.7.4), dbplyr (≥ 1.1.0), forcats (≥ 0.2.0), 
# ggplot2 (≥ 2.2.1), haven (≥ 1.1.0), hms (≥ 0.3), httr (≥ 1.3.1), jsonlite (≥ 1.5), lubridate (≥ 1.7.1), magrittr (≥ 1.5), modelr (≥ 0.1.1), purrr (≥ 0.2.4), 
# readr (≥ 1.1.1), readxl (≥ 1.0.0), reprex (≥ 0.1.1), rlang (≥ 0.1.4), rstudioapi (≥ 0.7), rvest (≥ 0.3.2), stringr (≥ 1.2.0), tibble (≥ 1.3.4), tidyr (≥ 0.7.2), xml2 (≥ 1.1.1)

# CRAN: lme4 and strucchange (+ deps) ####

install_version("minqa", version = "1.2.4", dependencies = FALSE) # Rcpp
install_version("RcppEigen", version = "0.3.3.5.0", dependencies = FALSE) # Matrix, Rcpp
install_version("lme4", version = "1.1-21", dependencies = FALSE) # boot, minqa, nloptr, RcppEigen

# strucchange + deps

install_version("zoo", version = "1.8-6", dependencies = FALSE) # lattice
install_version("sandwich", version = "2.5-1", dependencies = FALSE) # zoo
install_version("strucchange", version = "1.5-1", dependencies = FALSE) # sandwich

# CRAN: misc w/ up + downstream deps (NOTE: memory-intensive if run at once) ####

# packages that can be compiled using low-level installs above
install_version("brglm", version = "0.6.2", dependencies = FALSE) # profileModel
install_version("coda", version = "0.19-2", dependencies = FALSE) # lattice
install_version("expm", version = "0.999-4", dependencies = FALSE) # Matrix
install_version("flexclust", version = "1.4-0", dependencies = FALSE) # lattice, modeltools, class
# install_version("fs", version = "1.3.1", dependencies = FALSE) # Rcpp
install_version("ggrepel", version = "0.8.1", dependencies = FALSE) # ggplot2, Rcpp, scales
install_version("globals", version = "0.12.4", dependencies = FALSE) # codetools
install_version("hier.part", version = "1.0-4", dependencies = FALSE) # gtools
install_version("huge", version = "1.3.2", dependencies = FALSE) # Matrix, igraph, MASS, Rcpp
install_version("influenceR", version = "0.1.0", dependencies = FALSE) # igraph, Matrix
install_version("lambda.r", version = "1.2.3", dependencies = FALSE) # formatR 
install_version("libcoin", version = "1.0-4", dependencies = FALSE) # mvtnorm
install_version("locfit", version = "1.5-9.1", dependencies = FALSE) # lattice
install_version("maptools", version = "0.9-5", dependencies = FALSE) # foreign, lattice
install_version("ModelMetrics", version = "1.2.2", dependencies = FALSE) # Rcpp, data.table
install_version("npsurv", version = "0.4-0", dependencies = FALSE) # lsei
install_version("pbkrtest", version = "0.4-7", dependencies = FALSE) # lme4, Matrix, MASS
install_version("qpdf", version = "1.1", dependencies = FALSE) # Rcpp, askpass, curl
install_version("RandomFields", version = "3.3.6", dependencies = FALSE) # sp, RandomFieldsUtils
install_version("raster", version = "2.9-5", dependencies = FALSE) # Rcpp, sp
install_version("RcppAnnoy", version = "0.0.12", dependencies = FALSE) # Rcpp
install_version("RcppCNPy", version = "0.2.10", dependencies = FALSE) # Rcpp
install_version("RcppExamples", version = "0.1.8", dependencies = FALSE) # Rcpp
install_version("RcppRoll", version = "0.3.0", dependecies = FALSE) # Rcpp
install_version("Rdpack", version = "0.11-0", dependencies = FALSE) # bibtex, gbRd
install_version("RgoogleMaps", version = "1.4.3", dependencies = FALSE) # png
# install_version("rmarkdown", version = "1.13", dependencies = FALSE)
# Imports: 	tools, utils, knitr (≥ 1.22), yaml (≥ 2.1.19), htmltools (≥ 0.3.5), evaluate (≥ 0.13), 
# base64enc, jsonlite, mime, tinytex (≥ 0.11), xfun, methods, stringr (≥ 1.2.0)
install_version("robustbase", version = "0.93-5", dependencies = FALSE) # DEoptimR
install_version("RSpectra", version = "0.15-0", dependencies = FALSE) # Matrix, Rcpp
install_version("RSQLite", version = "2.1.1", dependencies = FALSE) 
# bit64, blob (≥ 1.1.1), DBI (≥ 1.0.0), memoise, methods, pkgconfig, Rcpp (≥ 0.12.7)
install_version("sendmailR", version = "1.2-1", dependencies = FALSE) # base64enc
install_version("xts", version = "0.11-2", dependencies = FALSE) # needs zoo
install_version("spacetime", version = "1.2-2", dependencies = FALSE)
# Imports: 	graphics, utils, stats, methods, lattice, sp (≥ 1.1-0), zoo (≥ 1.7-9), xts (≥ 0.8-8), intervals
install_version("spam", version = "2.2-2", dependencies = FALSE) # dotCall64
install_version("splancs", version = "2.01-40", dependencies = FALSE) # sp
install_version("stable", version = "1.1.4", dependencies = FALSE) # rmutil, stabledist
install_version("timeSeries", version = "3042.102", dependencies = FALSE) # timeDate
install_version("TMB", version = "1.7.15", dependencies = FALSE) # Matrix
# install_version("vctrs", version = "0.1.0", dependencies = FALSE) # backports, digest, glue, rlang, zeallot
install_version("vegan", version = "2.5-5", dependencies = FALSE) # cluster, lattice, MASS, mgcv, permute

# packages that need low-level installs above + some further deps to compile

# quantreg (MatrixModels)
install_version("MatrixModels", version = "0.4-1", dependencies = FALSE) # Matrix
install_version("quantreg", version = "5.41", dependencies = FALSE) # SparseM, MatrixModels

# rio (openxlsx)
install_version("openxlsx", version = "4.1.0.1", dependencies = FALSE) # Rcpp, zip
install_version("rio", version = "0.5.16", dependencies = FALSE)
# Imports: 	tools, stats, utils, foreign, haven (≥ 1.1.0), curl (≥ 0.6),
# data.table (≥ 1.9.8), readxl (≥ 0.1.1), openxlsx, tibble

# classInt (e1071)
install_version("e1071", version = "1.7-2", dependencies = FALSE) # class
install_version("classInt", version = "0.3-3", dependencies = FALSE) # e1071, class, KernSmooth

# promises (later)
install_version("later", version = "0.8.0", dependencies = FALSE) # Rcpp, rlang
install_version("promises", version = "1.0.1", dependencies = FALSE) # R6, Rcpp, later, rlang, magrittr

# shinyjs (httpuv, shiny)
install_version("httpuv", version = "1.5.1", dependencies = FALSE) # Rcpp, R6, promises, later
install_version("shiny", version = "1.3.2", dependencies = FALSE) 
# httpuv, mime, jsonlite, xtable, digest, htmltools, R6, sourcetools, later, promises, crayon, rlang
install_version("shinyjs", version = "1.0", dependencies = FALSE) # digest, htmltools, jsonlite, shiny

# gmodels (gdata)
install_version("gdata", version = "2.18.0", dependencies = FALSE) # gtools
install_version("gmodels", version = "2.18.1", dependencies = FALSE) # MASS, gdata

# recipes (lava, prodlim, ipred)
install_version("lava", version = "1.6.5", dependencies = FALSE) # numDeriv, survival, SQUAREM
install_version("prodlim", version = "2018.04.18", dependencies = FALSE) # needs Rcpp, survival, KernSmooth, lava
install_version("ipred", version = "0.9-9", dependencies = FALSE) # needs rpart, MASS, survival, nnet, class, prodlim
install_version("recipes", version = "0.1.6", dependencies = FALSE) # dplyr
# also Imports: generics, glue, gower, ipred, lubridate, magrittr, Matrix, purrr (≥ 0.2.3), rlang (≥ 0.4.0),
# stats, tibble, tidyr, tidyselect (≥ 0.2.5), timeDate, utils, withr

# multcomp (TH.data)
install_version("TH.data", version = "1.0-10", dependencies = FALSE) # survival, MASS
install_version("multcomp", version = "1.4-10", dependencies = FALSE) # mvtnorm, survival, TH.data, sandwich, codetools

# geometry (commonmark, magic, roxygen2, RcppArmadillo, RcppProgress)
# install_version("commonmark", version = "1.7", dependencies = FALSE) # curl, testthat, xml2
install_version("magic", version = "1.5-9", dependencies = FALSE) # abind
# install_version("roxygen2", version = "6.1.1", dependencies = FALSE) # brew, commonmark, desc, digest, pkgload,
# purrr, R6, Rcpp, stringi, stringr, xml2
install_version("RcppArmadillo", version = "0.9.500.2.0", dependencies = FALSE) # Rcpp
install_version("RcppProgress", version = "0.4.1", dependencies = FALSE) # RcppArmadillo, devtools, roxygen2, testthat
install_version("geometry", version = "0.4.1.1", dependencies = FALSE) # magic, Rcpp, RcppProgress, lpSolve

# rgexf (Rook, RCurl, XML)
install_version("Rook", version = "1.1-1", dependencies = FALSE) # brew
# install_version("RCurl", version = "1.95-4.12", dependencies = FALSE) # bitops
install_version("XML", version = "3.98-1.20", dependencies = FALSE) # bitops, RCurl
install_version("rgexf", version = "0.15.3", dependencies = FALSE) # XML, Rook, igraph

# Hmisc (htmlwidgets, visNetwork, checkmate, htmlTable, gridExtra, viridis, latticeExtra)
install_version("htmlwidgets", version = "1.3", dependencies = FALSE) # htmltools, jsonlite, yaml
install_version("visNetwork", version = "2.0.7", dependencies = FALSE) # htmlwidgets, htmltools, jsonlite, magrittr
install_version("checkmate", version = "1.9.4", dependencies = FALSE) # R6, bit, fastmatch, data.table (≥ 1.9.8), devtools, ggplot2, knitr, 
# magrittr, microbenchmark, rmarkdown, testthat (≥ 0.11.0), tibble
install_version("htmlTable", version = "1.13.1", dependencies = FALSE) 
# Imports: 	stringr, knitr (≥ 1.6), magrittr (≥ 1.5), methods, checkmate, htmlwidgets, htmltools, rstudioapi (≥ 0.6)
install_version("gridExtra", version = "2.3", dependencies = FALSE) # gtable
install_version("viridis", version = "0.5.1", dependencies = FALSE) # ggplot2, gridExtra
install_version("latticeExtra", version = "0.6-28", dependencies = FALSE) # lattice, RColorBrewer
install_version("Hmisc", version = "4.2-0", dependencies = FALSE)
# Depends: 	lattice, survival (≥ 2.40-1), Formula, ggplot2 (≥ 2.2)
# Imports: 	methods, latticeExtra, cluster, rpart, nnet, acepack, foreign, gtable, grid, gridExtra, data.table, 
# htmlTable (≥ 1.11.0), viridis, htmltools, base64enc

# qgraph + deps aside from Hmisc (BDGraph, d3Network, ggm, lavaan, psych)
install_version("BDgraph", version = "2.59", dependencies = FALSE) # igraph
install_version("d3Network", version = "0.5.2.1", dependencies = FALSE) # plyr, rjson, whisker 
# NOTE: ORPHANED, development moved to 'networkD3'
install_version("ggm", version = "2.3", dependencies = FALSE) # igraph
install_version("lavaan", version = "0.6-4", dependencies = FALSE) # MASS, mnormt, pbivnorm, numDeriv
install_version("psych", version = "1.8.12", dependencies = FALSE) 
# Imports: mnormt, parallel, stats, graphics, grDevices, methods, foreign, lattice, nlme
install_version("qgraph", version = "1.6.3", dependencies = FALSE) 
# Imports: 	Rcpp (≥ 1.0.0), methods, grDevices, psych, lavaan, plyr, Hmisc, igraph, jpeg, png, colorspace, Matrix, corpcor, 
# reshape2, ggplot2, glasso, huge, fdrtool, d3Network, ggm, gtools, BDgraph, parallel, pbapply, abind

# ROCR (caTools, gplots)
install_version("caTools", version = "1.17.1.2", dependencies = FALSE) # bitops
install_version("gplots", version = "3.0.1.1", dependencies = FALSE) # gtools, gdata, caTools, KernSmooth
install_version("ROCR", version = "1.0-7", dependencies = FALSE) # gplots

# survey (mitools)
install_version("mitools", version = "2.4", dependencies = FALSE) # DBI
install_version("survey", version = "3.36", dependencies = FALSE) # Matrix, survival, lattice, minqa, numDeriv, mitools

# manipulateWidget (miniUI, webshot)
install_version("miniUI", version = "0.1.1.1", dependencies = FALSE) # shiny, htmltools
install_version("webshot", version = "0.5.1", dependencies = FALSE) # magrittr, jsonlite, callr
install_version("manipulateWidget", version = "0.10.0", dependencies = FALSE) 
# Imports: 	shiny (≥ 1.0.3), miniUI, htmltools, htmlwidgets, knitr, methods, tools, base64enc, grDevices, codetools, webshot

# ggraph (farver, tweenr, ggforce)
install_version("farver", version = "1.1.0", dependencies = FALSE) # Rcpp
install_version("tweenr", version = "1.0.1", dependencies = FALSE) # farver, magrittr, rlang
install_version("ggforce", version = "0.2.2", dependencies = FALSE)
# Depends: 	ggplot2 (≥ 3.0.0), R (≥ 3.3.0)
# Imports: 	Rcpp (≥ 0.12.2), grid, scales, MASS, tweenr (≥ 0.1.5), gtable, rlang, polyclip, stats, grDevices
install_version("ggraph", version = "1.0.2", dependencies = FALSE)
# Depends: 	R (≥ 2.10), ggplot2 (≥ 2.0.0)
# Imports: 	Rcpp (≥ 0.12.2), dplyr, plyr, ggforce, grid, igraph (≥ 1.0.0), scales, MASS, digest, gtable, ggrepel, utils, stats, viridis

# CRAN: assertive deps (building on assertive.base) ####

install_version("assertive.matrices", version = "0.0-2", dependencies = FALSE)
install_version("assertive.models", version = "0.0-2", dependencies = FALSE)
install_version("assertive.numbers", version = "0.0-2", dependencies = FALSE)
install_version("assertive.properties", version = "0.0-4", dependencies = FALSE)
install_version("assertive.reflection", version = "0.0-4", dependencies = FALSE)
install_version("assertive.sets", version = "0.0-3", dependencies = FALSE)
install_version("assertive.types", version = "0.0-3", dependencies = FALSE) # assertive.properties and codetools
install_version("assertive.code", version = "0.0-3", dependencies = FALSE) # assertive.properties, assertive.types
install_version("assertive.strings", version = "0.0-3", dependencies = FALSE) # assertive.properties, stringi
install_version("assertive.data", version = "0.0-3", dependencies = FALSE) # assertive.strings
install_version("assertive.data.uk", version = "0.0-2", dependencies = FALSE) # assertive.strings
install_version("assertive.data.us", version = "0.0-2", dependencies = FALSE) # assertive.strings
install_version("assertive.datetimes", version = "0.0-2", dependencies = FALSE) # assertive.types
install_version("assertive.files", version = "0.0-2", dependencies = FALSE) # assertive.numbers

# CRAN: BBmisc ####

install_version("BBmisc", version = "1.11", dependencies = FALSE)

# CRAN: kimisc + dep aside from plyr ####

install_version("pryr", version = "0.1.4", dependencies = FALSE) # stringr, codetools, methods, Rcpp (≥ 0.11.0)
install_version("kimisc", version = "0.4", dependencies = FALSE) # memoise, plyr, pryr

# CRAN: forecast + missing deps ####

install_version("lmtest", version = "0.9-37", dependencies = FALSE) # zoo
install_version("TTR", version = "0.23-4", dependencies = FALSE) # zoo, xts
install_version("quantmod", version = "0.4-15", dependencies = FALSE) # TTR, zoo, xts
install_version("tseries", version = "0.10-47", dependencies = FALSE) # quadprog, quantmod, zoo
install_version("urca", version = "1.3-0", dependencies = FALSE) # nlme
install_version("forecast", version = "8.7", dependencies = FALSE) # all of the above and some others

# CRAN: biomod2 missing deps ####
install_version("hexbin", version = "1.27.3", dependencies = FALSE) # lattice
install_version("reshape", version = "0.8.8", dependencies = FALSE) # plyr
install_version("rasterVis", version = "0.46", dependencies = FALSE)
# Depends: 	R (≥ 2.14.0), methods, raster (≥ 2.0-12), lattice, latticeExtra
# Imports: 	stats, utils, parallel, grid, grDevices, RColorBrewer, hexbin, sp (≥ 1.0-6), zoo, viridisLite
install_version("pROC", version = "1.15.0", dependencies = FALSE) # plyr, Rcpp
install_version("gbm", version = "2.1.5", dependencies = FALSE) # gridExtra, lattice, survival
install_version("mda", version = "0.4-10", dependencies = FALSE) # class
install_version("randomForest", version = "4.6-14", dependencies = FALSE) # RColorBrewer, MASS
install_version("dismo", version = "1.1-4", dependencies = FALSE) # raster, sp
install_version("plotmo", version = "3.5.5", dependencies = FALSE) # Formula, plotrix, TeachingDemos
install_version("earth", version = "5.1.1", dependencies = FALSE) # Formula, plotmo, TeachingDemos

# CRAN: blockmodeling missing deps ####
install_version("foreach", version = "1.4.4", dependencies = FALSE) # codetools, iterators
install_version("doParallel", version = "1.0.14", dependencies = FALSE) # foreach, iterators
install_version("doRNG", version = "1.7.1", dependencies = FALSE) # foreach, rngtools

# CRAN: other packages (loosely alphabetical) ####
# "top of the food chain" packages with limited downstream requirements

# A

install_version("ade4", version = "1.7-13", dependencies = FALSE) 
# Depends: R (≥ 2.10), Imports: graphics, grDevices, methods, stats, utils, MASS
# if installing with deps = TRUE, needs udunits2-devel (libudunits2.so)

# adegenet needs ‘shiny’, ‘seqinr’, ‘spdep’, others installed above but add seqinr here
install_version("seqinr", version = "3.4-5", dependencies = FALSE) # needs ade4, segmented

install_version("akima", version = "0.6-2", dependencies = FALSE) # Imports: sp
install_version("amap", version = "0.8-16", dependencies = FALSE) # NOTE: Latest version (0.8-17) Depends: R (≥ 3.6.0)
install_version("analogue", version = "0.17-3", dependencies = FALSE) # Depends: 	R (≥ 3.5.0), vegan (≥ 2.2-0), 
# Imports: 	mgcv, MASS, stats, graphics, grid, brglm, princurve (≥ 2.0.2), lattice
install_version("ape", version = "5.3", dependencies = FALSE) # Depends: R (≥ 3.2.0), Imports:	nlme, lattice, graphics, methods, stats, tools, utils, parallel, Rcpp (≥ 0.12.0)
install_version("arm", version = "1.10-1", dependencies = FALSE) # Depends: R (≥ 3.1.0), MASS, Matrix (≥ 1.0), stats, lme4 (≥ 1.0) 
# Imports: 	abind, coda, graphics, grDevices, methods, nlme, utils
install_version("assertive", version = "0.3-5", dependencies = FALSE) # Depends: 	R (≥ 3.0.0) 
# Imports: 	assertive.base (≥ 0.0-4), assertive.properties (≥ 0.0-2), assertive.types (≥ 0.0-2), assertive.numbers, 
# assertive.strings, assertive.datetimes, assertive.files, assertive.sets (≥ 0.0-2), assertive.matrices, assertive.models, assertive.data, assertive.data.uk, assertive.data.us, 
# assertive.reflection (≥ 0.0-2), assertive.code, knitr

# B

install_version("base64", version = "2.0", dependencies = FALSE) # Imports:	openssl (which imports askpass) NOTE: ORPHANED, base64enc is newer
install_version("BatchJobs", version = "1.8", dependencies = FALSE) # Depends: 	R (≥ 3.0.0), BBmisc (≥ 1.9), methods 
# Imports: 	backports (≥ 1.1.1), brew, checkmate (≥ 1.8.0), data.table (≥ 1.9.6), DBI, digest, 
# parallel, RSQLite (≥ 1.0.9011), sendmailR, stats, stringi (≥ 0.4-1), utils
install_version("bazar", version = "1.0.11", dependencies = FALSE) # Depends: 	R (≥ 3.1.3) Imports: 	kimisc, stats, tools, utils
install_version("bfast", version = "1.5.7", dependencies = FALSE) # Imports: 	graphics, stats, strucchange, zoo, forecast, sp, raster
install_version("bibtex", version = "0.4.2", dependencies = FALSE) # needs stringr
install_version("biglm", version = "0.9-1", dependencies = FALSE) # Depends: 	DBI, methods
install_version("bigmemory", version = "4.5.33", dependencies = FALSE) # Imports: methods, Rcpp, utils, bigmemory.sri
install_version("bindrcpp", version = "0.2.2", dependencies = FALSE) # bindr, Rcpp
install_version("biomod2", version = "3.3-7.1", dependencies = FALSE) 
# Depends: 	R (≥ 3.2.1), stats, utils, sp, raster, parallel, reshape, ggplot2
# Imports: 	abind, rasterVis, pROC, nnet, gbm, mda, randomForest, rpart, MASS, methods, PresenceAbsence, dismo, earth
# rasterVis Depends: 	R (≥ 2.14.0), methods, raster (≥ 2.0-12), lattice, latticeExtra
# rasterVis Imports: 	stats, utils, parallel, grid, grDevices, RColorBrewer, hexbin, sp (≥ 1.0-6), zoo, viridisLite
install_version("blockmodeling", version = "0.3.4", dependencies = FALSE) # Imports: 	stats, methods, Matrix, doParallel, doRNG, parallel, foreach
install_version("bookdown", version = "0.11", dependencies = FALSE) # Imports: htmltools (≥ 0.3.6), knitr (≥ 1.22), rmarkdown (≥ 1.12), xfun (≥ 0.6), tinytex (≥ 0.12)
install_version("BradleyTerry2", version = "1.1-0", dependencies = FALSE) # Imports: 	brglm, gtools, lme4 (≥ 1.0), qvcalc, stats

# C

install_version("car", version = "3.0-3", dependencies = FALSE) # Imports: abind, MASS, mgcv, nnet, pbkrtest (≥ 0.4-4), quantreg, grDevices, utils, stats, graphics, maptools, rio, lme4, nlme
install_version("caret", version = "6.0-84", dependencies = FALSE) # lattice, ggplot2
# also Imports: 	foreach, methods, plyr, ModelMetrics (≥ 1.1.0), nlme, reshape2, stats, stats4, utils, grDevices, recipes (≥ 0.1.4), withr (≥ 2.0.0)
install_version("clue", version = "0.3-57", dependencies = FALSE) # cluster
install_version("clusterGeneration", version = "1.3.4", dependencies = FALSE) # MASS
install_version("clv", version = "0.3-2.1", dependencies = FALSE) # cluster, class
install_version("coin", version = "1.3-0", dependencies = FALSE) # survival
# also Imports: 	methods, parallel, stats, stats4, utils, libcoin (≥ 1.0-0), matrixStats (≥ 0.54.0), modeltools (≥ 0.2-9), mvtnorm (≥ 1.0-5), multcomp
install_version("cowplot", version = "0.9.4", dependencies = FALSE) # ggplot2, gtable, plyr, scales
install_version("crosstalk", version = "1.0.0", dependencies = FALSE) # htmltools, jsonlite, lazyeval, R6, shiny, ggplot2
install_version("cubature", version = "2.0.3", dependencies = FALSE) # Rcpp
install_version("CVST", version = "0.2-2", dependencies = FALSE) # kernlab, Matrix

# D

install_version("ddalpha", version = "1.3.9", dependencies = FALSE) # MASS, class, robustbase, sfsmisc, geometry
install_version("DetSel", version = "1.0.3", dependencies = FALSE) # ash
install_version("downloader", version = "0.4", dependencies = FALSE) # digest, used for DiagrammeR
install_version("DiagrammeR", version = "1.0.1", dependencies = FALSE)
# Imports: 	dplyr (≥ 0.7.4), downloader (≥ 0.4), glue (≥ 1.2.0), htmltools (≥ 0.3.6), htmlwidgets (≥ 1.0), igraph (≥ 1.1.2), 
# influenceR (≥ 0.1.0), magrittr (≥ 1.5), purrr (≥ 0.2.4), RColorBrewer (≥ 1.1-2), readr (≥ 1.1.1), rlang (≥ 0.2.0), rstudioapi (≥ 0.7), 
# rgexf (≥ 0.15.3), scales (≥ 0.5.0), stringr (≥ 1.3.0), tibble (≥ 1.4.2), tidyr (≥ 0.8.0), viridis (≥ 0.5.0), visNetwork (≥ 2.0.3)
install_version("DRR", version = "0.0.3", dependencies = FALSE) # kernlab, CVST, Matrix, needed for dimRed
install_version("dimRed", version = "0.2.3", dependencies = FALSE) # DRR, magrittr
install_version("diveRsity", version = "1.9.90", dependencies = FALSE) # ggplot2, shiny, ggraph, Rcpp
install_version("DMwR", version = "0.4.1", dependencies = FALSE)
# Depends: 	R (≥ 2.10), methods, graphics, lattice (≥ 0.18-3), grid (≥ 2.10.1)
# Imports: 	xts (≥ 0.6-7), quantmod (≥ 0.3-8), zoo (≥ 1.6-4), abind (≥ 1.1-0), rpart (≥ 3.1-46), class (≥ 7.3-1), ROCR (≥ 1.0)
install_version("doParallel", version = "1.0.14", dependencies = FALSE) # foreach, iterators
install_version("dtplyr", version = "0.0.3", dependencies = FALSE) # dplyr, data.table, lazyeval, rlang
install_version("dtw", version = "1.20-1", dependencies = FALSE) # proxy

# E

install_version("effects", version = "4.1-1", dependencies = FALSE) # survey, estimability
install_version("expm", version = "0.999-4", dependencies = FALSE) # Matrix
install_version("extrafont", version = "0.17", dependencies = FALSE) # extrafontdb, Rttf2pt1

# F

install_version("fail", version = "1.3", dependencies = FALSE) # BBmisc, checkmate
install_version("fBasics", version = "3042.89", dependencies = FALSE)
# Depends: 	R (≥ 2.15.1), timeDate, timeSeries
# Imports: 	stats, grDevices, graphics, methods, utils, MASS, spatial, gss, stabledist
install_version("ff", version = "2.2-14", dependencies = FALSE) # bit
install_version("fields", version = "9.8-3", dependencies = FALSE) # spam, maps
install_version("fitdistrplus", version = "1.0-14", dependencies = FALSE) # MASS, npsurv
install_version("flexmix", version = "2.3-15", dependencies = FALSE) # modeltools, nnet
install_version("futile.logger", version = "1.4.3", dependencies = FALSE) # lambda.r, futile.options
install_version("future", version = "1.14.0", dependencies = FALSE) # digest, globals, listenv
install_version("future.apply", version = "1.3.0", dependencies = FALSE) # future, globals

# G

install_version("gam", version = "1.16.1", dependencies = FALSE) # foreach
install_version("gbm", version = "2.1.5", dependencies = FALSE) # gridExtra, lattice, survival
install_version("geiger", version = "2.0.6.2", dependencies = FALSE)
# Depends: 	ape (≥ 3.0-6), R (≥ 2.15.0)
# Imports: 	MASS, mvtnorm, subplex, deSolve (≥ 1.7), digest, Rcpp (≥ 0.11.0), coda, ncbit, colorspace, methods
install_version("geoR", version = "1.7-5.2.1", dependencies = FALSE) # needs MASS, sp, splancs, RandomFields
install_version("geoRglm", version = "0.9-11", dependencies = FALSE) # needs geoR
install_version("geosphere", version = "1.5-10", dependencies = FALSE) # needs sp
install_version("GGally", version = "1.4.0", dependencies = FALSE)
# Depends: 	R (≥ 3.1), ggplot2 (> 2.2.0)
# Imports: 	grDevices, grid, gtable (≥ 0.2.0), plyr (≥ 1.8.3), progress, RColorBrewer, reshape (≥ 0.8.5), 
# utils, rlang
install_version("ggbeeswarm", version = "0.6.0", dependencies = FALSE) # needs beeswarm, vipor
install_version("ggdendro", version = "0.1-20", dependencies = FALSE) # needs MASS, ggplot2
install_version("GGIR", version = "1.9-2", dependencies = FALSE) # needs data.table, Rcpp
install_version("ggmap", version = "3.0.0", dependencies = FALSE)
# Depends: 	R (≥ 3.1.0), ggplot2 (≥ 2.2.0)
# Imports: 	RgoogleMaps, png, plyr, rjson, jpeg, digest, scales, dplyr, bitops, grid, glue, httr, stringr, purrr, magrittr, tibble, tidyr
install_version("ggridges", version = "0.5.1", dependencies = FALSE)
# Imports: 	ggplot2 (≥ 2.2.0), grid (≥ 3.0.0), plyr (≥ 1.8.0), scales (≥ 0.4.1), withr (≥ 2.1.1)
install_version("glmmTMB", version = "0.2.3", dependencies = FALSE) # needs methods, TMB (≥ 1.7.13), lme4 (≥ 1.1-18.9000), Matrix, nlme
install_version("glmnet", version = "2.0-18", dependencies = FALSE) # needs Matrix, foreach
install_version("gstat", version = "2.0-2", dependencies = FALSE)
# Imports: 	utils, stats, graphics, methods, lattice, sp (≥ 0.9-72), zoo, spacetime (≥ 1.0-0), FNN
install_version("gtx", version = "0.0.8", dependencies = FALSE) # needs survival

# I

install_version("ifultools", version = "2.0-5", dependencies = FALSE) # needs	MASS, methods, splus2R (≥ 1.2-0)
install_version("influenceR", version = "0.1.0", dependencies = FALSE) # needs igraph, Matrix
install_version("irlba", version = "2.3.3", dependencies = FALSE) # needs Matrix

# K 

install_version("kdecopula", version = "0.9.2", dependencies = FALSE)
# needs  	lattice, locfit, qrng, Rcpp (≥ 0.11.2), graphics, grDevices, stats, utils, quadprog
install_version("kinship2", version = "1.8.4", dependencies = FALSE) # needs Matrix, quadprog

# L

install_version("leaflet", version = "2.0.2", dependencies = FALSE)
# Imports: 	base64enc, crosstalk, htmlwidgets, htmltools, magrittr, markdown, methods, png, RColorBrewer, 
# raster, scales (≥ 1.0.0), sp, stats, viridis (≥ 0.5.1)
install_version("leaflet.extras", version = "1.0.0", dependencies = FALSE) # needs leaflet

# M

install_version("mapproj", version = "1.2.6", dependencies = FALSE) # needs maps
# maxent not included in installation. Removed from CRAN due to repeated non-response to requests to fix check issues. 
install_version("MCMCglmm", version = "2.29", dependencies = FALSE)
# Depends: 	Matrix, coda, ape
# Imports: 	corpcor, tensorA, cubature, methods
install_version("mda", version = "0.4-10", dependencies = FALSE) # needs class
install_version("metap", version = "1.1", dependencies = FALSE) # needs lattice, Rdpack
install_version("mi", version = "1.0", dependencies = FALSE) # needs arm, Matrix

# NOTE: genefilter (needed for modeest) is a Bioconductor package ... see elsewhere for other Bioconductor package installations.
BiocManager::install("genefilter")
# running this also installs other Bioconductor packages: ‘BiocGenerics’, ‘IRanges’, ‘S4Vectors’, ‘AnnotationDbi’, ‘annotate’, ‘Biobase’

install_version("modeest", version = "2.3.3", dependencies = FALSE) # needs bazar, fBasics, genefilter, stable, stabledist, stats, statip
install_version("msm", version = "1.6.7", dependencies = FALSE) # needs survival, mvtnorm, expm

# N

install_version("ndjson", version = "0.7.0", dependencies = FALSE) # needs Rcpp, data.table, dplyr, dtplyr
install_version("network", version = "1.15", dependencies = FALSE) # needs tibble, magrittr
install_version("networkD3", version = "0.4", dependencies = FALSE) # needs htmlwidgets, igraph, magrittr
install_version("neuralnet", version = "1.44.2", dependencies = FALSE) # needs Deriv, MASS 
install_version("NMF", version = "0.21.0", dependencies = FALSE)
# Depends: 	R (≥ 3.0.0), methods, utils, pkgmaker (≥ 0.20), registry, rngtools (≥ 1.2.3), cluster
# Imports: 	graphics, stats, stringr (≥ 1.0.0), digest, grid, grDevices, gridBase, colorspace, RColorBrewer, foreach, doParallel, ggplot2, reshape2
install_version("np", version = "0.60-9", dependencies = FALSE)

# O

install_version("openair", version = "2.6-5", dependencies = FALSE)
# Imports: 	grid, rlang, dplyr, purrr, tidyr, mgcv, lattice, latticeExtra, lubridate, cluster, RColorBrewer, 
# mapproj, hexbin, Rcpp, grDevices, graphics, methods, stats, MASS, util
install_version("optparse", version = "1.6.2", dependencies = FALSE) # needs getopt

# P

install_version("party", version = "1.3-3", dependencies = FALSE) 
# Depends: 	R (≥ 3.0.0), methods, grid, stats, mvtnorm (≥ 1.0-2), modeltools (≥ 0.2-21), strucchange
# Imports: 	survival (≥ 2.37-7), coin (≥ 1.1-0), zoo, sandwich (≥ 1.1-1)
install_version("pcaPP", version = "1.9-73", dependencies = FALSE) # needs mvtnorm
install_version("phangorn", version = "2.5.5", dependencies = FALSE)
# Depends: 	R (≥ 3.2.0), ape (≥ 5.0)
# Imports: 	quadprog, igraph (≥ 1.0), Matrix, parallel, methods, utils, stats, graphics, grDevices, fastmatch, magrittr, Rcpp (≥ 0.12.0)
install_version("pheatmap", version = "1.0.12", dependencies = FALSE) # RColorBrewer, scales, gtable
install_version("picante", version = "1.8", dependencies = FALSE) # ape, vegan, nlme
# install_version("pillar", version = "1.4.2", dependencies = FALSE) # cli, crayon, fansi, rlang, utf8, vctrs
install_version("plotly", version = "4.9.0", dependencies = FALSE)
# Depends: 	R (≥ 3.2.0), ggplot2 (≥ 3.0.0)
# Imports: 	tools, scales, httr, jsonlite (≥ 1.6), magrittr, digest, viridisLite, base64enc, htmltools (≥ 0.3.6), 
# htmlwidgets (≥ 1.3), tidyr, hexbin, RColorBrewer, dplyr, tibble, lazyeval (≥ 0.2.0), rlang, crosstalk, purrr, data.table, promises
install_version("plotmo", version = "3.5.5", dependencies = FALSE) # Formula, plotrix, TeachingDemos
install_version("pls", version = "2.7-1", dependencies = FALSE) # MASS, Rmpi, testthat, RUnit
install_version("polysat", version = "1.7-4", dependencies = FALSE) # Rcpp

# R

install_version("R.oo", version = "1.22.0", dependencies = FALSE) # R.methodsS3
install_version("R.utils", version = "2.9.0", dependencies = FALSE) # R.oo, R.methodsS3
install_version("R2admb", version = "0.7.16", dependencies = FALSE) # coda, lattice
install_version("R2WinBUGS", version = "2.1-21", depdencies = FALSE) # coda, boot
install_version("rARPACK", version = "0.11-0", dependencies = FALSE) # RSpectra
install_version("reticulate", version = "1.12", dependencies = FALSE) # jsonlite, Rcpp, Matrix
install_version("rgrass7", version = "0.1-12", dependencies = FALSE) # sp, XML
install_version("RInside", version = "0.2.15", dependencies = FALSE) # Rcpp
install_version("rioja", version = "0.9-21", dependencies = FALSE) # vegan, mgcv
install_version("rlas", version = "1.3.2", dependencies = FALSE) # Rcpp, data.table
install_version("Rmisc", version = "1.5", dependencies = FALSE) # lattice, plyr
install_version("RPMM", version = "1.25", dependencies = FALSE) # cluster
install_version("RPostgreSQL", version = "0.6-2", dependencies = FALSE) # DBI, also needs PostgreSQL
install_version("rsvd", version = "1.0.1", dependencies = FALSE) # Matrix
install_version("Rtsne", version = "0.15", dependencies = FALSE) # Rcpp
# install_version("rversions", version = "2.0.0", dependencies = FALSE) # curl, xml2

# S

install_version("satellite", version = "1.0.1", dependencies = FALSE) # raster
install_version("shapefiles", version = "0.7", dependencies = FALSE) # foreign
install_version("sctransform", version = "0.2.0", dependencies = FALSE) # MASS, Matrix, methods, future, future.apply, ggplot2, reshape2, gridExtra, Rcpp
install_version("SDMTools", version = "1.1-221.1", dependencies = FALSE) # R.utils (NOTE: ORPHANED)
install_version("seas", version = "0.5-2", dependencies = FALSE) # MASS
install_version("sem", version = "3.1-9", dependencies = FALSE) # matrixcalc, MASS, bott, mi
install_version("Seurat", version = "3.0.2", dependencies = FALSE)
# Depends: 	R (≥ 3.4.0), methods
# Imports: 	ape, cluster, cowplot, fitdistrplus, future, future.apply, ggplot2 (≥ 3.0.0), 
# ggrepel, ggridges, graphics, grDevices, grid, ica, igraph, irlba, KernSmooth, lmtest, 
# MASS, Matrix (≥ 1.2.14), metap, pbapply, plotly, png, RANN, RColorBrewer, Rcpp, reticulate, 
# rlang, ROCR, rsvd, Rtsne, scales, sctransform (≥ 0.2.0), SDMTools, stats, tools, tsne, utils

# sna needs statnet.common
install_version("statnet.common", version = "4.3.0", dependencies = FALSE) # coda
install_version("sna", version = "2.4", dependencies = FALSE) # statnet.common, network
install_version("snowfall", version = "1.84-6.1", dependencies = FALSE) # snow
install_version("spatstat.data", version = "1.4-0", dependencies = FALSE) # spatstat.utils
install_version("spatstat", version = "1.60-1", dependencies = FALSE)
# Depends: 	R (≥ 3.3.0), spatstat.data (≥ 1.4-0), stats, graphics, grDevices, utils, methods, nlme, rpart
# Imports: 	spatstat.utils (≥ 1.13-0), mgcv, Matrix, deldir (≥ 0.0-21), abind, tensor, polyclip (≥ 1.10-0), goftest
install_version("spgrass6", version = "0.8-9", dependencies = FALSE) # sp, XML
install_version("ssgraph", version = "1.8", dependencies = FALSE) # BDGraph
install_version("statip", version = "0.2.0", dependencies = FALSE) # bazar, clue, rpart
install_version("streamR", version = "0.4.5", dependencies = FALSE) # RCurl, rjson, ndjson

# T

install_version("tm", version = "0.7-6", dependencies = FALSE) # NLP, Rcpp, slam, xml2
# TreePar needs TreeSim
install_version("TreeSim", version = "2.4", dependencies = FALSE) # ape, geiger
install_version("TreePar", version = "3.3", dependencies = FALSE) # ape, Matrix, subplex, TreeSim, deSolve

# U

install_version("umap", version = "0.2.2.0", dependencies = FALSE) # reticulate, Rcpp, Rspectra

# V

install_version("vcfR", version = "1.8.0", dependencies = FALSE)
# ape, dplyr, graphics, grDevices, magrittr, memuse, methods, pinfsc50, Rcpp, stats, stringr, tibble, utils, vegan, viridisLite

# VineCopula needs copula, which in turn depends on various upstream packages
install_version("copula", version = "0.999-19.1", dependencies = FALSE)
# stats, graphics, methods, stats4, Matrix, lattice, colorspace, gsl, ADGofTest, stabledist (≥ 0.6-4), mvtnorm, pcaPP, pspline, numDeriv
install_version("VineCopula", version = "2.1.8", dependencies = FALSE)
# graphics, grDevices, stats, utils, MASS, mvtnorm, network, methods, copula (≥ 0.999-16), kdecopula (≥ 0.8.0), ADGofTest,
# lattice, doParallel, parallel, foreach

# CRAN: Packages that need units / udunits2 ####

# udunits2 installation may need configure.args (change path as needed)

# install_version("udunits2", version = "0.13", dependencies = FALSE, 
#                configure.args='--with-udunits2-include=/home/jharriso/anaconda3/envs/puhtitest-env/include')

# install_version("adegenet", version = "2.1.1", dependencies = FALSE) # ‘shiny’, ‘seqinr’, ‘spdep’
# Depends: 	R (≥ 2.14), methods, ade4, Imports: 	utils, stats, grDevices, MASS, igraph, ape, shiny, ggplot2, seqinr, parallel, spdep, boot, reshape2, dplyr (≥ 0.4.1), vegan

# install_version("pegas", version = "0.11", dependencies = FALSE) # ape, adegenet
# install_version("poppr", version = "2.8.3", dependencies = FALSE)
# Depends: 	R (≥ 2.15.1), adegenet (≥ 2.0.0)
# Imports: 	stats, graphics, grDevices, utils, vegan, ggplot2, phangorn, ape (≥ 3.1-1), igraph (≥ 1.0.0), methods, ade4, pegas, polysat, dplyr (≥ 0.4), rlang, boot, shiny, magrittr

# CRAN: Packages that need X11 ####
# note, rgl also needed for spatial packages

# install_version("rgl", version = "0.100.24", dependencies = FALSE)
# Imports: 	graphics, grDevices, stats, utils, htmlwidgets, htmltools, knitr, jsonlite (≥ 0.9.20), 
# shiny, magrittr, crosstalk, manipulateWidget (≥ 0.9.0)
# install_version("longitudinalData", version = "2.4.1", dependencies = FALSE) # methods, clv, class, rgl, utils, misc3d
# install_version("tkrplot", version = "0.0-24", dependencies = FALSE)
# install_version("misc3d", version = "0.8-4", dependencies = FALSE) # rgl, tkrplot, MASS

# TSclust needs wmtsa, which depends on various upstream packages
# install_version("wmtsa", version = "2.0-3", dependencies = FALSE) # splus2R, ifultools, MASS
# install_version("TSclust", version = "1.2.4", dependencies = FALSE) # wmtsa, pdc, cluster, locpol, KernSmooth, dtw, longitudinalData

# CRAN: Packages that need GDAL and PROJ4 ####

# This part is still unordered and needs completing
# note that some here also need units!

# install_version("rgdal", version = "1.4-4", dependencies = FALSE) # sp
# install_version("units", version = "0.6-3", dependencies = FALSE) # Rcpp, udunits2
# install_version("sf", version = "0.7-4", dependencies = FALSE) # classInt, DBI, magrittr, Rcpp, units
# install_version("spdep", version = "1.1-2", dependencies = FALSE) # sp, spData, sf
# also imports: deldir, boot (≥ 1.3-1), graphics, grDevices, utils, stats, Matrix, LearnBayes, MASS, coda, expm, gmodels, nlme

# install_version("spatialreg", version = "1.1-3", dependencies = FALSE) # spdep, expm, coda, methods, MASS, boot, 
# splines, LearnBayes, nlme, gmodels
# install_version("hierfstat", version = "0.04-22", dependencies = FALSE) # needs gtools, ade4, adegenet
# install_version("GWmodel", version = "2.1-1", dependencies = FALSE)
# install_version("rgeos", version = ...)
# install_version("lidR", version = "2.0.3", dependencies = FALSE)
# Imports: 	data.table, future (≥ 1.10.0), gdalUtils, geometry, glue, grDevices, gstat, lazyeval, imager, 
# Rcpp (≥ 0.11.0), RCSF, rgeos, rgdal, rgl, rlas (≥ 1.2.5), sf, stats, tools, utils
# install_version("leafpm", version = "0.1.0", dependencies = FALSE) # needs dplyr, htmltools, htmlwidgets, jsonlite, leaflet, sf
# install_version("mapedit", version = "0.5.0", dependencies = FALSE)
# Imports: 	dplyr, htmltools (≥ 0.3), htmlwidgets, jsonlite, leaflet (≥ 2.0.1), leaflet.extras (≥ 1.0), leafpm, mapview, miniUI, sf (≥ 0.5-2), shiny

# install_version("RSAGA", version = "1.3.0", dependencies = FALSE)
# Depends: 	R (≥ 2.10), gstat, shapefiles, plyr
# Imports: 	stats, utils, rgdal, stringr, magrittr

# install_version("leafem", version = ...)
# install_version("leafpop", version = ...)
# install_version("mapview", version = "2.7.0", dependencies = FALSE)
# Imports: 	base64enc, brew, htmltools, htmlwidgets, lattice, leafem, leaflet (≥ 2.0.0), leafpop, png, 
# raster, Rcpp (≥ 0.11.3), satellite, scales (≥ 0.2.5), sf, sp, svglite, uuid, viridisLite, webshot

# configure: error: proj_api.h not found in standard or given locations.
# install.packages('rgdal', type = "source", configure.args=c('--with-proj-include=/usr/local/include','--with-proj-lib=/usr/local/lib'))

# install_version("spatial.tools", version = "1.6.0", dependencies = FALSE) # compiler, doParallel, foreach, iterators, mmap, raster, rgdal, sp, abind

# CRAN: Packages that need Java ####

# install_version("rJava", version = "0.9-11", dependencies = FALSE)
# Make sure you have Java Development Kit installed and correctly registered in R.
# If in doubt, re-run "R CMD javareconf" as root. NOTE: TRIED, didn't work
# had openjdk=11.0.1 in yaml file
# install_version("JavaGD", version = "0.6-1.1", dependencies = FALSE) # needs rJava

# install_version("RWekajars", version = "3.9.3-1", dependencies = FALSE)
# install_version("RWeka", version = "0.4-40", dependencies = FALSE)
# install_version("FSelector", version = "0.31", dependencies = FALSE) # needs randomForest, RWeka, digest, entropy

# CRAN: Packages that need TBB ####

# install_version("RcppParallel", version = "4.4.3", dependencies = FALSE)
# install_version("dtwclust", version = "5.5.3", dependencies = FALSE)
# Depends: 	R (≥ 3.2.0), methods, proxy (≥ 0.4-16), dtw
# Imports: 	parallel, stats, utils, bigmemory, clue, cluster, dplyr, flexclust, foreach, ggplot2, ggrepel, 
# Matrix, nloptr, RSpectra, Rcpp, RcppParallel (≥ 4.4.0), reshape2, shiny, shinyjs

# CRAN: Packages that need MPI ####

# install_version("Rmpi", version = "0.6-9", dependencies = FALSE) 

# Rmpi installation may require configure.args, e.g. something like (modify for own purposes)
# install.packages('Rmpi',configure.args = '--with-Rmpi-include=/usr/include/openmpi-x86_64 --with-Rmpi-libpath=/usr/lib64/openmpi/lib --with-Rmpi-type=OPENMPI')

# install_version("doMPI", version = "0.2.2", dependencies = FALSE) # needs foreach, iterators, Rmpi
# install_version("pbdMPI", version = "0.3-9", dependencies = FALSE) # needs float, rlecuyer
# install_version("pbdSLAP", version = "0.2-6", dependencies = FALSE) # needs pbdMPI, rlecuyer
# install_version("pbdBASE", version = "0.5-0", dependencies = FALSE) # needs pbdMPI, pbdSLAP
# install_version("pbdMAT", version = "0.5-1", dependencies = FALSE) # needs pbdBASE, pbdMPI
# install_version("pbdDEMO", version = "0.3-1", dependencies = FALSE) # needs pbdBASE, pbdMAT, pbdMPI


# CRAN: Packages that need GMP ####

# install_version("gmp", version = "0.5-13.5", dependencies = FALSE)

# CRAN: Packages that need Magick++ / ImageMagick ####

# install_version("magick", version = "2.0", dependencies = FALSE) # needs Rcpp, magrittr, curl
# install_version("animation", version = "2.6", dependencies = FALSE) # needs magick

# install_version("phytools", version = "0.6-99", dependencies = FALSE)
# Depends: 	R (≥ 3.2.0), ape (≥ 4.0), maps
# Imports: 	animation, clusterGeneration, coda, combinat, expm, graphics, grDevices, gtools, MASS, 
# methods, mnormt, nlme, numDeriv, phangorn (≥ 2.3.1), plotrix, scatterplot3d, stats, utils

# CRAN: Packages that need Cairo ####

# install_version("gdtools", version = "0.1.9", dependencies = FALSE) # Rcpp, withr
# install_version("svglite", version = "1.2.2", dependencies = FALSE) # Rcpp, gdtools

# CRAN: Packages that need NetCDF ####

# install_version("ncdf4", version = "1.16.1", dependencies = FALSE) # needs netcdf library v. 4.1 or later

# CRAN: Packages that need Poppler ####

# install_version("pdftools", version = "2.2", dependencies = FALSE) # needs Rcpp, qpdf

# CRAN: Packages that need JAGS ####

# install_version("rjags", version = "4-8", dependencies = FALSE) # coda
# install_version("runjags", version = "2.0.4-2", dependencies = FALSE) # lattice, coda

# CRAN: Packages that need MySQL / MariaDB-Connector ####

# install_version("RMySQL", version = "0.10.17", dependencies = FALSE) # DBI (Note: legacy package, RmariaDB has modern MySQL client)

# CRAN: Packages that need libtiff ####

# install_version("rtiff", version = "1.4.6", dependencies = FALSE) # pixmap
# install_version("sendplot", version = "4.0.0", dependencies = FALSE) # rtiff

# Bioconductor: most packages (NOTE1: DON'T AUTO-RUN + NOTE2: SET BIOCONDUCTOR VERSION) ####

# Bioconductor version control vs CRAN version control is tricky to manage.
# installing Bioconductor packages will override previously installed CRAN package versions!
# RUNNING THESE CARELESSLY MIGHT RISK BREAKING SOMETHING ELSE.

# For R 3.5.1, Bioconductor version set to 3.8

# Bioconductor packages already installed:
# ‘BiocGenerics’, 'genefilter', ‘IRanges’, ‘S4Vectors’, ‘AnnotationDbi’, ‘annotate’, ‘Biobase’

# Bioconductor packages that need zlib 

BiocManager::install("affy")
BiocManager::install("oligo")

# installing oligo also compiles the following Bioconductor packages:
# 'affyio', 'BiocInstaller', 'BiocParallel', 'BiocVersion', 'Biostrings', 'DelayedArray',
# 'GenomeInfoDb', 'GenomeInfoDbData', 'GenomicRanges', 'oligoClasses', 'preprocessCore',
# 'SummarizedExperiment', 'XVector', 'zlibbioc'

BiocManager::install("airway")
BiocManager::install("AnnotationFilter")
BiocManager::install("AnnotationForge")
BiocManager::install("AnnotationHub") # also installs Bioconductor package interactiveDisplaybase
BiocManager::install("BiocGenerics")
BiocManager::install("BiocNeighbors")
BiocManager::install("BiocStyle")
BiocManager::install("bioDist")
BiocManager::install("biomaRt")
BiocManager::install("biovizBase")

# installing biovizBase also installs following Bioconductor packages:
# ‘rtracklayer’, ‘BSgenome’, ‘ProtGenerics’, ‘Rsamtools’, ‘GenomicAlignments’, ‘GenomicFeatures’, ‘VariantAnnotation’, ‘ensembldb’

BiocManager::install("BSgenome.Dmelanogaster.UCSC.dm3")
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19")

# there is a CRAN package called "deconstructSigs" that depends on more than one Bioconductor package to function.
# added here...
install_version("deconstructSigs", version = "1.8.0", dependencies = FALSE) 
# reshape2, BSgenome, BSgenome.Hsapiens.UCSC.hg19, GenomeInfoDb, grDevices, graphics, utils

BiocManager::install("bumphunter") # also installs Bioconductor package limma
BiocManager::install("Category") # also installs Bioconductor packages graph, RBGL, GSEABase
BiocManager::install("chipseq") # also installs Biocondcutor package ShortRead
BiocManager::install("cummeRbund") # also installs Bioconductor package Gviz
BiocManager::install("DESeq") # also installs Bioconductor package geneplotter
BiocManager::install("DESeq2")
BiocManager::install("DEXSeq")
BiocManager::install("FDb.InfiniumMethylation.hg19")
# also installs Bioconductor packages ‘TxDb.Hsapiens.UCSC.hg19.knownGene’, ‘org.Hs.eg.db’
BiocManager::install("org.Dm.eg.db")
BiocManager::install("TxDb.Dmelanogaster.UCSC.dm3.ensGene")
BiocManager::install("fission")
BiocManager::install("gage") # also installs Bioconductor package KEGGREST
BiocManager::install("gageData")
BiocManager::install("gcrma")
BiocManager::install("gdsfmt")
BiocManager::install("geneLenDataBase")
BiocManager::install("ggbio") # also installs Bioconductor package OrganismDbi
BiocManager::install("goseq")
BiocManager::install("IRanges")
BiocManager::install("KEGGgraph")
BiocManager::install("mixOmics")
BiocManager::install("MutationalPatterns")
BiocManager::install("pathview")
BiocManager::install("PFAM.db")
BiocManager::install("ReportingTools")
BiocManager::install("ROC")
BiocManager::install("SAGx")
BiocManager::install("seqLogo")
BiocManager::install("SIFT.Hsapiens.dbSNP132")
BiocManager::install("simpleaffy")
BiocManager::install("sleuth")
BiocManager::install("SNPlocs.Hsapiens.dbSNP.20101109")
BiocManager::install("SNPRelate")
BiocManager::install("snpStats")
BiocManager::install("sva")

# Bioconductor: packages with external dependencies ####

# packages that need TBB

# BiocManager::install("dada2") # RcppParallel

# packages that need zlib (or depend on hdf5 libs that can only be installed using zlib)

# BiocManager::install("beachmat") # also installs ‘Rhdf5lib’, ‘rhdf5’, ‘HDF5Array’
# BiocManager::install("biomformat")
# BiocManager::install("DelayedMatrixStats")
# BiocManager::install("DiffBind") 
# also installs Bioconductor packages ‘Rgraphviz’, ‘ShortRead’, ‘GOstats’, ‘GO.db’, ‘pheatmap’, ‘edgeR’, ‘systemPipeR’
# BiocManager::install("FlowSorted.Blood.450k")
# also installs dependencies ‘Rhdf5lib’, ‘multtest’, ‘rhdf5’, ‘siggenes’, ‘illuminaio’, ‘DelayedMatrixStats’, ‘GEOquery’, ‘HDF5Array’, ‘minfi’
# BiocManager::install("IlluminaHumanMethylation450kanno.ilmn12.hg19")
# BiocManager::install("lumi") # also installs Bioconductor package methylumi
# BiocManager::install("mzR")
# BiocManager::install("phyloseq")
# BiocManager::install("scater") # SingleCellExperiment, beachmat
# BiocManager::install("scran")
# BiocManager::install("wateRmelon")

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
