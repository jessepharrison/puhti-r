# R 3.6.1 PACKAGE SET 5
# CRAN packages (spatial packages) + others that need rgdal

.libPaths(c("/appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages", .libPaths()))
libpath <- .libPaths()[1]

repo <- 'https://cloud.r-project.org/'

library(devtools)

# CRAN: Packages that need GDAL and PROJ4 ####

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


