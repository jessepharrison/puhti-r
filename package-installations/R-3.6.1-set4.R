# R 3.6.1 PACKAGE SET 4 
# CRAN packages, other packages with wider dependencies

.libPaths(c("/appl/soft/math/R/R-3.6.1/R-3.6.1-rpackages", .libPaths()))
libpath <- .libPaths()[1]

repo <- 'https://cloud.r-project.org/'

library(devtools)

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

