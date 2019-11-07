# R 3.6.1 DEVTOOLS AND BIOCONDUCTOR
# Install this before going through package sets!

.libPaths(c("/appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages", .libPaths()))
libpath <- .libPaths()[1]

repo <- 'https://cloud.r-project.org/'

install.packages("devtools", dependencies = TRUE, lib = libpath, repos = repo)

# Set Bioconductor version to 3.9
BiocManager::install(version = "3.9", lib = libpath, ask = FALSE)
