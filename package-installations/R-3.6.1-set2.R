# R 3.6.1 PACKAGE SET 2 
# CRAN packages w/ up + downstream dependencies

.libPaths(c("/appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages", .libPaths()))
libpath <- .libPaths()[1]

repo <- 'https://cloud.r-project.org/'

library(devtools)

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
install_version("classInt", version = "0.3-3", dependencies = FALSE, lib = libpath, repos = repo)

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
