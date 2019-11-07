# R 3.6.1 PACKAGE SET 7
# Extras, GitHub installations, user requests etc
# See end of script for list of packages not currently installed

.libPaths(c("/appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages", .libPaths()))
libpath <- .libPaths()[1]

repo <- 'https://cloud.r-project.org/'

library(devtools)

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

