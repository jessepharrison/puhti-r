# R 3.6.1 - ALL INITIAL PACKAGE INSTALLATIONS

# R 3.6.1 DEVTOOLS AND BIOCONDUCTOR
# Install this before going through package sets!

.libPaths(c("/appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages", .libPaths()))
libpath <- .libPaths()[1]

repo <- 'https://cloud.r-project.org/'

install.packages("devtools", dependencies = TRUE, lib = libpath, repos = repo)

# Set Bioconductor version to 3.9
BiocManager::install(version = "3.9", lib = libpath, ask = FALSE)

# Load devtools
library(devtools)

# R 3.6.1 PACKAGE SET 1 
# CRAN packages, lower-level

install_version("abind", version = "1.4-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("acepack", version = "1.4.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ADGofTest", version = "0.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("aggregation", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ash", version = "1.0-15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.base", version = "0.0-7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertthat", version = "0.2.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("base64enc", version = "0.1-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("batch", version = "1.1-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bdsmatrix", version = "1.3-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("beanplot", version ="1.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("beeswarm", version = "0.2.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("BH", version = "1.69.0-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("BiasedUrn", version = "1.07", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bigmemory.sri", version = "0.1.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bindr", version = "0.1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bit", version = "1.1-14", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bit64", version = "0.9-7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bitops", version = "1.0-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("blob", version = "1.1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("boot", version = "1.3-23", dependencies = FALSE, lib = libpath, repos = repo)
install_version("brew", version = "1.0-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("calibrate", version = "1.7.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("carData", version = "3.0-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("chron", version = "2.3-53", dependencies = FALSE, lib = libpath, repos = repo)
install_version("class", version = "7.3-15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("cluster", version = "2.1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("codetools", version = "0.2-16", dependencies = FALSE, lib = libpath, repos = repo)
install_version("colorspace", version = "1.4-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("combinat", version = "0.0-8", dependencies = FALSE, lib = libpath, repos = repo)
install_version("corpcor", version = "1.6.9", dependencies = FALSE, lib = libpath, repos = repo)
install_version("corrplot", version = "0.84", dependencies = FALSE, lib = libpath, repos = repo)
install_version("data.table", version = "1.12.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("DBI", version = "1.0.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("deldir", version = "0.1-22", dependencies = FALSE, lib = libpath, repos = repo)
install_version("DEoptimR", version = "1.0-8", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Deriv", version = "3.8.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("deSolve", version = "1.23", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dichromat", version = "2.0-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("diptest", version = "0.75-7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dotCall64", version = "1.0-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dynamicTreeCut", version = "1.63-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ellipse", version = "0.4.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("entropy", version = "1.2.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("estimability", version = "1.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("extrafontdb", version = "1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fastcluster", version = "1.1.25", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fastmatch", version = "1.1-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fdrtool", version = "1.2.15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("float", version = "0.2-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fmsb", version = "0.6.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("FNN", version = "1.1.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fracdiff", version = "1.4-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fontcm", version = "1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("formatR", version = "1.7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("foreign", version = "0.8-72", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Formula", version = "1.2-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fracdiff", version = "1.4-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("futile.options", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gbRd", version = "0.4-11", dependencies = FALSE, lib = libpath, repos = repo)
install_version("generics", version = "0.0.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("getopt", version = "1.20.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("glasso", version = "1.11", dependencies = FALSE, lib = libpath, repos = repo)
install_version("glue", version = "1.3.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("goftest", version = "1.1-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gower", version = "0.2.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gridBase", version = "0.4-7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gsl", version = "2.1-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gss", version = "2.1-10", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gtable", version = "0.3.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gtools", version = "3.8.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("hwriter", version = "1.3.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ica", version = "1.0-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("inline", version = "0.3.15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("intervals", version = "0.15.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("iterators", version = "1.0.10", dependencies = FALSE, lib = libpath, repos = repo)
install_version("jpeg", version = "0.1-8", dependencies = FALSE, lib = libpath, repos = repo)
install_version("kernlab", version = "0.9-27", dependencies = FALSE, lib = libpath, repos = repo)
install_version("KernSmooth", version = "2.23-15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("labeling", version = "0.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("lattice", version = "0.20-38", dependencies = FALSE, lib = libpath, repos = repo)
install_version("LearnBayes", version = "2.15.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("listenv", version = "0.7.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("lmodel2", version = "1.7-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("locpol", version = "0.7-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("lpSolve", version = "5.6.13.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("lsei", version = "1.2-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("manipulate", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("maps", version = "3.3.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("matrixcalc", version = "1.0-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("matrixStats", version = "0.54.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mclust", version = "5.4.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("memuse", version = "4.0-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("microbenchmark", version = "1.4-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mmap", version = "0.6-17", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mnormt", version = "1.5-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("modeltools", version = "0.2-22", dependencies = FALSE, lib = libpath, repos = repo)
install_version("modes", version = "0.7.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mvtnorm", version = "1.0-11", dependencies = FALSE, lib = libpath, repos = repo)
install_version("NbClust", version = "3.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ncbit", version = "2013.03.29", dependencies = FALSE, lib = libpath, repos = repo)
install_version("nnet", version = "7.3-12", dependencies = FALSE, lib = libpath, repos = repo)
install_version("nnls", version = "1.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("nleqslv", version = "3.3.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("nlme", version = "3.1-141", dependencies = FALSE, lib = libpath, repos = repo)
install_version("nloptr", version = "1.2.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("NLP", version = "0.2-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("nor1mix", version = "1.3-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("nplplot", version = "4.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("numDeriv", version = "2016.8-1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("outliers", version = "0.14", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pbapply", version = "1.4-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pbivnorm", version = "0.6.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pbmcapply", version = "1.4.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pdc", version = "1.0.3", dependencise = FALSE, lib = libpath, repos = repo)
install_version("permute", version = "0.9-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pixmap", version = "0.4-11", dependencies = FALSE, lib = libpath, repos = repo)
install_version("plogr", version = "0.2.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("plotrix", version = "3.7-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pinfsc50", version = "1.1.0", dependencise = FALSE, lib = libpath, repos = repo)
install_version("pixmap", version = "0.4-11", dependencies = FALSE, lib = libpath, repos = repo)
install_version("png", version = "0.1-7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pls", version = "2.7-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("PoiClaClu", version = "1.0.2.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("polyclip", version = "1.10-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pracma", version = "2.2.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("praise", version = "1.0.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("PresenceAbsence", version = "1.1.9", dependencies = FALSE, lib = libpath, repos = repo)
install_version("princurve", version = "2.1.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("profileModel", version = "0.6.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("proto", version = "1.0.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("proxy", version = "0.4-23", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pspline", version = "1.0-18", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pvclust", version = "2.0-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("qap", version = "0.1-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("qrng", version = "0.0-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("quadprog", version = "1.5-7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("qvcalc", version = "1.0.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("R.methodsS3", version = "1.7.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RandomFieldsUtils", version = "0.5.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RANN", version = "2.6.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rematch", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RColorBrewer", version = "1.1-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Rcpp", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rjson", version = "0.2.20", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RJSONIO", version = "1.3-1.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rlecuyer", version = "0.3-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rmutil", version = "1.1.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rpart", version = "4.1-15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Rttf2pt1", version = "1.3.7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RUnit", version = "0.4.32", dependencies = FALSE, lib = libpath, repos = repo)
install_version("scatterplot3d", version = "0.3-41", dependencies = FALSE, lib = libpath, repos = repo)
install_version("segmented", version = "1.0-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("settings", version = "0.2.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sfsmisc", version = "1.1-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sgeostat", version = "1.0-27", dependencies = FALSE, lib = libpath, repos = repo)
install_version("shape", version = "1.4.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("slam", version = "0.1-45", dependencies = FALSE, lib = libpath, repos = repo)
install_version("snow", version = "0.4-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sourcetools", version = "0.1.7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sp", version = "1.3-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spatstat.utils", version = "1.13-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spData", version = "0.3.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("SparseM", version = "1.77", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spatial", version = "7.3-11", dependencies = FALSE, lib = libpath, repos = repo)
install_version("splus2R", version = "1.2-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("SQUAREM", version = "2017.10-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sROC", version = "0.1-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("stabledist", version = "0.7-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("statmod", version = "1.4.32", dependencies = FALSE, lib = libpath, repos = repo)
install_version("subplex", version = "1.5-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("SuppDists", version = "1.1-9.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("survival", version = "2.44-1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("TeachingDemos", version = "2.10", dependencies = FALSE, lib = libpath, repos = repo)
install_version("tensor", version = "1.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("tensorA", version = "0.36.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("timeDate", version = "3043.102", dependencies = FALSE, lib = libpath, repos = repo)
install_version("truncnorm", version = "1.0-8", dependencies = FALSE, lib = libpath, repos = repo)
install_version("tsne", version = "0.1-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("uroot", version = "2.1-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("uuid", version = "0.1-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("vipor", version = "0.4.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("viridisLite", version = "0.3.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("withr", version = "2.1.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("zip", version = "2.0.3", dependencies = FALSE, lib = libpath, repos = repo)

# R 3.6.1 PACKAGE SET 2 
# CRAN packages w/ up + downstream dependencies

# pkgmaker
install_version("bibtex", version = "0.4.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("registry", version = "0.5-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("xtable", version = "1.8-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pkgmaker", version = "0.27", dependencies = FALSE, lib = libpath, repos = repo)

# rngtools
install_version("rngtools", version = "1.4", dependencies = FALSE, lib = libpath, repos = repo)

# tidyverse
install_version("tidyselect", version = "0.2.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dplyr", version = "0.8.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("tidyr", version = "0.8.3", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("dbplyr", version = "1.4.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("cellranger", version = "1.1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ellipsis", version = "0.3.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("forcats", version = "0.4.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("plyr", version = "1.8.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("reshape2", version = "1.4.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("broom", version = "0.5.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("munsell", version = "0.5.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("scales", version = "1.0.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mgcv", version = "1.8-29", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ggplot2", version = "3.2.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("hms", version = "0.4.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("readr", version = "1.3.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("prettyunits", version = "1.0.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("progress", version = "1.2.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("haven", version = "2.1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("readxl", version = "1.3.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("lubridate", version = "1.7.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("modelr", version = "0.1.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("processx", version = "3.3.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("callr", version = "3.2.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("reprex", version = "0.3.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("tidyverse", version = "1.2.1", dependencies = FALSE, lib = libpath, repos = repo) 

# lme4
install_version("minqa", version = "1.2.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RcppEigen", version = "0.3.3.5.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("lme4", version = "1.1-21", dependencies = FALSE, lib = libpath, repos = repo)

# strucchange
install_version("zoo", version = "1.8-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("sandwich", version = "2.5-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("strucchange", version = "1.5-1", dependencies = FALSE, lib = libpath, repos = repo)

# misc packages w/ upstream and downstream dependencies
install_version("brglm", version = "0.6.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("coda", version = "0.19-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("expm", version = "0.999-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("flexclust", version = "1.4-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("fs", version = "1.3.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("globals", version = "0.12.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("future", version = "1.14.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ggrepel", version = "0.8.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("h5", version = "0.9.9", dependencies = FALSE, lib = libpath, repos = repo)
install_version("hier.part", version = "1.0-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("igraph", version = "1.2.4.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("huge", version = "1.3.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("influenceR", version = "0.1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("lambda.r", version = "1.2.3", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("libcoin", version = "1.0-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("locfit", version = "1.5-9.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("maptools", version = "0.9-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ModelMetrics", version = "1.2.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("npsurv", version = "0.4-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pbkrtest", version = "0.4-7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("qpdf", version = "1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RandomFields", version = "3.3.6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("raster", version = "2.9-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RcppAnnoy", version = "0.0.12", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RcppCNPy", version = "0.2.10", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RcppExamples", version = "0.1.8", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RcppRoll", version = "0.3.0", dependecies = FALSE, lib = libpath, repos = repo)
install_version("Rdpack", version = "0.11-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RgoogleMaps", version = "1.4.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rmarkdown", version = "1.16", dependencies = FALSE, lib = libpath, repos = repo)
install_version("robustbase", version = "0.93-5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RSpectra", version = "0.15-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RSQLite", version = "2.1.1", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("sendmailR", version = "1.2-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("xts", version = "0.11-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spacetime", version = "1.2-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spam", version = "2.2-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("splancs", version = "2.01-40", dependencies = FALSE, lib = libpath, repos = repo)
install_version("stable", version = "1.1.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("timeSeries", version = "3042.102", dependencies = FALSE, lib = libpath, repos = repo)
install_version("TMB", version = "1.7.15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("vctrs", version = "0.1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("vegan", version = "2.5-5", dependencies = FALSE, lib = libpath, repos = repo)

# quantreg
install_version("MatrixModels", version = "0.4-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("quantreg", version = "5.41", dependencies = FALSE, lib = libpath, repos = repo)

# rio
install_version("openxlsx", version = "4.1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rio", version = "0.5.16", dependencies = FALSE, lib = libpath, repos = repo)

# classInt
install_version("e1071", version = "1.7-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("classInt", version = "0.4-2", dependencies = FALSE, lib = libpath, repos = repo)

# promises
install_version("later", version = "0.8.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("promises", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)

# shinyjs
install_version("httpuv", version = "1.5.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("shiny", version = "1.3.2", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("shinyjs", version = "1.0", dependencies = FALSE, lib = libpath, repos = repo)

# gmodels
install_version("gdata", version = "2.18.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gmodels", version = "2.18.1", dependencies = FALSE, lib = libpath, repos = repo)

# recipes
install_version("lava", version = "1.6.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("prodlim", version = "2018.04.18", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ipred", version = "0.9-9", dependencies = FALSE, lib = libpath, repos = repo)
install_version("recipes", version = "0.1.6", dependencies = FALSE, lib = libpath, repos = repo)

# multcomp
install_version("TH.data", version = "1.0-10", dependencies = FALSE, lib = libpath, repos = repo)
install_version("multcomp", version = "1.4-10", dependencies = FALSE, lib = libpath, repos = repo)

# geometry
install_version("commonmark", version = "1.7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("magic", version = "1.5-9", dependencies = FALSE, lib = libpath, repos = repo)
install_version("roxygen2", version = "6.1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RcppArmadillo", version = "0.9.500.2.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RcppProgress", version = "0.4.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("geometry", version = "0.4.1.1", dependencies = FALSE, lib = libpath, repos = repo)

# rgexf (Rook, RCurl, XML)
install_version("Rook", version = "1.1-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RCurl", version = "1.95-4.12", dependencies = FALSE, lib = libpath, repos = repo)
install_version("XML", version = "3.98-1.20", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rgexf", version = "0.15.3", dependencies = FALSE, lib = libpath, repos = repo)

# Hmisc
install_version("htmlwidgets", version = "1.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("visNetwork", version = "2.0.7", dependencies = FALSE, lib = libpath, repos = repo)
install_version("checkmate", version = "1.9.4", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("htmlTable", version = "1.13.1", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("gridExtra", version = "2.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("viridis", version = "0.5.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("latticeExtra", version = "0.6-28", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Hmisc", version = "4.2-0", dependencies = FALSE, lib = libpath, repos = repo)

# qgraph
install_version("BDgraph", version = "2.59", dependencies = FALSE, lib = libpath, repos = repo)
install_version("d3Network", version = "0.5.2.1", dependencies = FALSE, lib = libpath, repos = repo)
BiocManager::install("graph", lib = libpath) 
install_version("ggm", version = "2.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("lavaan", version = "0.6-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("psych", version = "1.8.12", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("qgraph", version = "1.6.3", dependencies = FALSE, lib = libpath, repos = repo) 

# ROCR
install_version("caTools", version = "1.17.1.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gplots", version = "3.0.1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ROCR", version = "1.0-7", dependencies = FALSE, lib = libpath, repos = repo)

# survey
install_version("mitools", version = "2.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("survey", version = "3.36", dependencies = FALSE, lib = libpath, repos = repo)

# manipulateWidget
install_version("miniUI", version = "0.1.1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("webshot", version = "0.5.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("manipulateWidget", version = "0.10.0", dependencies = FALSE, lib = libpath, repos = repo) 

# ggraph
install_version("farver", version = "1.1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("tweenr", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ggforce", version = "0.2.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("ggraph", version = "1.0.2", dependencies = FALSE, lib = libpath, repos = repo)

# assertive dependencies (building on assertive.base)
install_version("assertive.matrices", version = "0.0-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.models", version = "0.0-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.numbers", version = "0.0-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.properties", version = "0.0-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.reflection", version = "0.0-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.sets", version = "0.0-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.types", version = "0.0-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.code", version = "0.0-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.strings", version = "0.0-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.data", version = "0.0-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.data.uk", version = "0.0-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.data.us", version = "0.0-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.datetimes", version = "0.0-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("assertive.files", version = "0.0-2", dependencies = FALSE, lib = libpath, repos = repo)

# BBmisc 
install_version("BBmisc", version = "1.11", dependencies = FALSE, lib = libpath, repos = repo)

# pryr + kimisc
install_version("pryr", version = "0.1.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("kimisc", version = "0.4", dependencies = FALSE, lib = libpath, repos = repo)

# forecast
install_version("lmtest", version = "0.9-37", dependencies = FALSE, lib = libpath, repos = repo)
install_version("TTR", version = "0.23-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("quantmod", version = "0.4-15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("tseries", version = "0.10-47", dependencies = FALSE, lib = libpath, repos = repo)
install_version("urca", version = "1.3-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("forecast", version = "8.7", dependencies = FALSE, lib = libpath, repos = repo)

# biomod2 dependencies
install_version("hexbin", version = "1.27.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("reshape", version = "0.8.8", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rasterVis", version = "0.46", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pROC", version = "1.15.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gbm", version = "2.1.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mda", version = "0.4-10", dependencies = FALSE, lib = libpath, repos = repo)
install_version("randomForest", version = "4.6-14", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dismo", version = "1.1-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("plotmo", version = "3.5.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("earth", version = "5.1.1", dependencies = FALSE, lib = libpath, repos = repo)

# blockmodeling dependencies
install_version("foreach", version = "1.4.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("doParallel", version = "1.0.14", dependencies = FALSE, lib = libpath, repos = repo)
install_version("doRNG", version = "1.7.1", dependencies = FALSE, lib = libpath, repos = repo)

# R 3.6.1 PACKAGE SET 3 
# CRAN packages, top of the food chain

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

# R 3.6.1 PACKAGE SET 4 
# CRAN packages, other packages with wider dependencies

# packages that need X11
# (note: rgl also needed for spatial packages)

install_version("rgl", version = "0.100.24", dependencies = FALSE, lib = libpath, repos = repo)
install_version("tkrplot", version = "0.0-24", dependencies = FALSE, lib = libpath, repos = repo)
install_version("misc3d", version = "0.8-4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("longitudinalData", version = "2.4.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("wmtsa", version = "2.0-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("TSclust", version = "1.2.4", dependencies = FALSE, lib = libpath, repos = repo)

# packages that need Java

install.packages("/appl/soft/math/R/R-3.6.1/R-3.6.1-compile/R-3.6.1-tar/rJava_0.9-12.tar.gz",
configure.vars="CPPFLAGS=-I/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/include LDFLAGS=-L/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/lib", lib = libpath, repos = NULL, type = "source")

# want to install from command line?
# ./R CMD INSTALL --configure-vars="CPPFLAGS=-I/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/include \
# LDFLAGS='-L/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/lib'" \
# -l /appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages \
# /appl/soft/math/R/R-3.6.1/R-3.6.1-compile/R-3.6.1-tar/rJava_0.9-12.tar.gz

# could also be installed using devtools, but CRAN only has 0.9-11
# install_version("rJava", version = "0.9-11", dependencies = FALSE,
# configure.vars="CPPFLAGS=-I/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/include LDFLAGS=-L/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/lib", lib = libpath, repos = repo)

install_version("JavaGD", version = "0.6-1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RWekajars", version = "3.9.3-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RWeka", version = "0.4-40", dependencies = FALSE, lib = libpath, repos = repo)
install_version("FSelector", version = "0.31", dependencies = FALSE, lib = libpath, repos = repo)

# packages that need TBB

install_version("RcppThread", version = "0.5.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dtwclust", version = "5.5.3", dependencies = FALSE, lib = libpath, repos = repo)

# packages that need UDUNITS2
# (note: excluding spatial packages that come later)

install_version("udunits2", version = "0.13", dependencies = FALSE,
configure.args='--with-udunits2-include=/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/include --with-udunits2-lib=/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/lib', lib = libpath, repos = repo)

# packages that need MPI

install_version("Rmpi", version = "0.6-9", dependencies = FALSE,
configure.args='--with-Rmpi-include=/appl/spack/install-tree/gcc-9.1.0/hpcx-mpi-2.4.0-dnpuei/include --with-Rmpi-libpath=/appl/spack/install-tree/gcc-9.1.0/hpcx-mpi-2.4.0-dnpuei/lib --with-mpi=/appl/spack/install-tree/gcc-9.1.0/hpcx-mpi-2.4.0-dnpuei --with-Rmpi-type=OPENMPI', lib = libpath, repos = repo)

install_version("doMPI", version = "0.2.2", dependencies = FALSE, lib = libpath, repos = repo)

install_version("pbdMPI", version = "0.3-9", dependencies = FALSE, 
configure.args='--with-Rmpi-include=/appl/spack/install-tree/gcc-9.1.0/hpcx-mpi-2.4.0-dnpuei/include --with-Rmpi-libpath=/appl/spack/install-tree/gcc-9.1.0/hpcx-mpi-2.4.0-dnpuei/lib --with-mpi=/appl/spack/install-tree/gcc-9.1.0/hpcx-mpi-2.4.0-dnpuei --with-Rmpi-type=OPENMPI', lib = libpath, repos = repo)

install_version("pbdSLAP", version = "0.2-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pbdBASE", version = "0.5-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pbdDMAT", version = "0.5-1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pbdDEMO", version = "0.3-1", dependencies = FALSE, lib = libpath, repos = repo)

# packages that need GMP

install_version("gmp", version = "0.5-13.5", dependencies = FALSE, lib = libpath, repos = repo)

install.packages("/appl/soft/math/R/R-3.6.1/R-3.6.1-compile/R-3.6.1-build/Rmpfr_0.7-2_Puhti.tar.gz",
configure.args="--with-mpfr-include=/appl/spack/install-tree/gcc-9.1.0/mpfr-4.0.1-px7373/include --with-mpfr-lib=/appl/spack/install-tree/gcc-9.1.0/mpfr-4.0.1-px7373/lib",
lib = libpath, repos = NULL, type = "source")

# packages that need Magick++ / ImageMagick

install_version("magick", version = "2.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("animation", version = "2.6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("phytools", version = "0.6-99", dependencies = FALSE, lib = libpath, repos = repo)

# packages that need Cairo

install.packages("/appl/soft/math/R/R-3.6.1/R-3.6.1-compile/R-3.6.1-tar/Cairo_1.5-10.tar.gz",
configure.vars="CPPFLAGS=-I/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/include LDFLAGS=-L/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/lib CAIRO_CFLAGS=-I/appl/spack/install-tree/gcc-9.1.0/cairo-1.16.0-ftr2be/include/cairo CAIRO_LIBS='-L/appl/spack/install-tree/gcc-9.1.0/cairo-1.16.0-ftr2be/lib/cairo -lcairo'",
lib = libpath, repos = NULL, type = "source") # needed CPPFLAGS and LDFLAGS to find zlib

install_version("gdtools", version = "0.1.9", dependencies = FALSE, lib = libpath, repos = repo)
install_version("svglite", version = "1.2.2", dependencies = FALSE, lib = libpath, repos = repo)

# packages that need NetCDF

install_version("ncdf4", version = "1.16.1", dependencies = FALSE, lib = libpath, repos = repo)

# packages that need Poppler

# needs poppler-cpp.pc in poppler pkgconfig folder (poppler must be installed with iconv)
install_version("pdftools", version = "2.2", dependencies = FALSE, lib = libpath, repos = repo)

# packages that need JAGS

install_version("rjags", version = "4-8", dependencies = FALSE, 
configure.args="--enable-rpath", lib = libpath, repos = repo)

install_version("runjags", version = "2.0.4-4", dependencies = FALSE, 
configure.args="--with-jags-include=/appl/spack/install-tree/gcc-9.1.0/jags-4.3.0-6tvbgr/include/JAGS --with-jags-lib=/appl/spack/install-tree/gcc-9.1.0/jags-4.3.0-6tvbgr/lib", lib = libpath, repos = repo)

# packages that need MySQL / MariaDB-Connector

# RMySQL taken off list, obsolete package (RMariaDB is more recent)
# gives server version error, same as https://github.com/r-dbi/RMySQL/issues/214

install_version("RMariaDB", version = "1.0.6", dependencies = FALSE, lib = libpath, repos = repo)

# packages that need libtiff

install.packages("/appl/soft/math/R/R-3.6.1/R-3.6.1-compile/R-3.6.1-build/rtiff_1.4.6_Puhti.tar.gz",
configure.vars="CPPFLAGS=-I/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/include LDFLAGS=-L/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/lib", lib = libpath, repos = NULL, type = "source")

# command prompt version
# ./R CMD INSTALL --configure-vars=" \
# CPPFLAGS=-I/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/include \
# LDFLAGS=-L/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/lib" \
# -l /appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages \
# /appl/soft/math/R/R-3.6.1/R-3.6.1-compile/R-3.6.1-build/rtiff_1.4.6_Puhti.tar.gz

install_version("sendplot", version = "4.0.0", dependencies = FALSE, lib = libpath, repos = repo)

# R 3.6.1 PACKAGE SET 5
# CRAN packages (spatial packages) + others that need rgdal

# Packages that need GDAL and PROJ4

install_version("rgdal", version = "1.4-7", dependencies = FALSE, 
configure.args='--with-gdal-config=/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/bin/gdal-config --with-proj-include=/appl/spack/install-tree/gcc-9.1.0/proj-5.2.0-rvoplb/include --with-proj-lib=/appl/spack/install-tree/gcc-9.1.0/proj-5.2.0-rvoplb/lib', lib = libpath, repos = repo)

install_version("units", version = "0.6-5", dependencies = FALSE, 
configure.args='--with-udunits2-lib=/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/lib --with-udunits2-include=/appl/soft/math/R/R-3.6.1/R-3.6.1-spackview/include', lib = libpath, repos = repo)

install_version("sf", version = "0.8-0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spdep", version = "1.1-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spatialreg", version = "1.1-3", dependencies = FALSE, lib = libpath, repos = repo) 
install_version("adegenet", version = "2.1.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("hierfstat", version = "0.04-22", dependencies = FALSE, lib = libpath, repos = repo)
install_version("GWmodel", version = "2.1-3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rgeos", version = "0.5-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gdalUtils", version = "2.0.1.14", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bmp", version = "0.3", dependencies = FALSE, lib = libpath, repos = repo)

# custom makevars for tiff package (done prior to RPM installation of libtiff-devel)
install.packages("/appl/soft/math/R/R-3.6.1/R-3.6.1-compile/R-3.6.1-build/tiff_0.1-5_Puhti.tar.gz",
lib = libpath, repos = NULL, type = "source")

install_version("readbitmap", version = "0.1.5", dependencies = FALSE, lib = libpath, repos = repo)

# wants fftw3 and libtiff - the following only works because libtiff was RPM-installed
# (fftw3 can be included by adding flags but libtiff doesn't listen properly to these)
install_version("imager", version = "0.41.2", dependencies = FALSE, lib = libpath, repos = repo)

install_version("RCSF", version = "1.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("lidR", version = "2.1.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("leafpm", version = "0.1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("leafem", version = "0.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("leafpop", version = "0.0.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mapview", version = "2.7.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mapedit", version = "0.5.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("RSAGA", version = "1.3.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("spatial.tools", version = "1.6.0", dependencies = FALSE, lib = libpath, repos = repo)

# dartr + dependencies
install_version("directlabels", version = "2018.05.22", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pca3d", version = "0.10", dependencies = FALSE, lib = libpath, repos = repo)
install_version("pegas", version = "0.12", dependencies = FALSE, lib = libpath, repos = repo)
install_version("polspline", version = "1.1.16", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rms", version = "5.1-3.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("haplo.stats", version = "1.7.9", dependencies = FALSE, lib = libpath, repos = repo)
install_version("SNPassoc", version = "1.9-2", dependencies = FALSE, lib = libpath, repos = repo)
BiocManager::install("SNPRelate", lib = libpath, update = FALSE)
install_version("StAMPP", version = "1.5.1", dependencies = FALSE, lib = libpath, repos = repo)
BiocManager::install("qvalue", lib = libpath, update = FALSE)
install_version("rrBLUP", version = "4.6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mmod", version = "1.3.3", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gap", version = "1.2.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("genetics", version = "1.3.8.1.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("gdistance", version = "1.2-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("PopGenReport", version = "3.0.4", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dartR", version = "1.1.11", dependencies = FALSE, lib = libpath, repos = repo)

# rgrass7
install_version("rgrass7", version = "0.2-1", dependencies = FALSE, lib = libpath, repos = repo)
# GRASS GIS interface loaded with GRASS version: (GRASS not running)

# R 3.6.1 PACKAGE SET 6
# Bioconductor packages (Bioconductor version 3.9)

# excludes a small number of Bioconductor packages required as 
# CRAN package dependencies

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

# R 3.6.1 PACKAGE SET 7
# Extras, GitHub installations, user requests etc
# See end of script for list of packages not currently installed

# A
# B

# brms (+ dependencies)

install_version("StanHeaders", version = "2.19.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("loo", version = "2.1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rstan", version = "2.19.2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rstantools", version = "2.0.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bayesplot", version = "1.7.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("colourpicker", version = "1.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("dygraphs", version = "1.1.1.6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("packrat", version = "0.5.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("rsconnect", version = "0.8.15", dependencies = FALSE, lib = libpath, repos = repo)
install_version("threejs", version = "0.3.1", dependencies = FALSE, lib = libpath, repos = repo)
install_version("shinystan", version = "2.5.0", dependencies = FALSE, lib = libpath, repos = repo)
install_version("mvnfast", version = "0.2.5", dependencies = FALSE, lib = libpath, repos = repo)
install_version("Brobdingnag", version = "1.2-6", dependencies = FALSE, lib = libpath, repos = repo)
install_version("bridgesampling", version = "0.7-2", dependencies = FALSE, lib = libpath, repos = repo)
install_version("brms", version = "2.10.0", dependencies = FALSE, lib = libpath, repos = repo)
 
# C
# D
# E

# F 

install_version("fasterize", version = "1.0.0", dependencies = FALSE, lib = libpath, repos = repo)

# G
# H
# I
# J
# K
# L
# M
# N
# O
# P
# Q
# R
# S
# T
# U
# V
# W
# X
# Y
# Z

# Packages not currently installed

# INLA

# Not available for R 3.6.1 (neither stable or test version work)

# Stable version:
# install.packages("INLA", INLA = "https://inla.r-inla-download.org/R/stable", dependencies = FALSE, lib = libpath, repos = repo)

# Test version:
# install.packages("INLA", INLA = "https://inla.r-inla-download.org/R/testing", dependencies = FALSE, lib = libpath, repos = repo)

# SAIGE

# SAIGE is probably not good as a system-wide install (some package errors... not CRAN / Bioconductor)
# Also needs cget - currently stops at an error message

# install_version("SPAtest", version = "3.0.0", dependencies = FALSE, lib = libpath, repos = repo)
# install_version("SKAT", version = "1.3.2.1", dependencies = FALSE, lib = libpath, repos = repo) 
# install_version("MetaSKAT", version = "0.71", dependencies = FALSE, lib = libpath, repos = repo)
# devtools::install_github("weizhouUMICH/SAIGE", dependencies = FALSE, lib = libpath) 

# sleuth
# install_github("pachterlab/sleuth", lib = libpath)

# VAST - needs INLA
# https://github.com/James-Thorson-NOAA/VAST

### END ###

