**Using threading to improve performance**

The `r-env-singularity` module has been configured to use the Intel® Math Kernel Library (MKL), enabling the execution of data analysis tasks using multiple threads. For more information on threading, [see the Intel® website](https://software.intel.com/content/www/us/en/develop/documentation/mkl-linux-developer-guide/top/managing-performance-and-memory/improving-performance-with-threading.html). 

By default, `r-env-singularity` is single-threaded. While users may set a desired number of threads for a job, the benefits of this in terms of computation times depend on the analysis. Because of this, we encourage experimenting with different thread numbers and benchmarking your code using a small example data set and, for example, the R package [`microbenchmark`](https://cran.r-project.org/web/packages/microbenchmark/index.html).

!!! note
    Note that simply adding more resources does not necessarily guarantee faster computation!

The module uses OpenMP threading technology and the number of threads can be controlled using the environment variable `OMP_NUM_THREADS`. In practice, the number of threads is set to match the number of cores used for the job. 

To improve the performance of multi-threaded tasks, `r-env-singularity` automatically binds OpenMP threads to specific cores using `OMP_PLACES=cores`. The container has also been configured to monitor thread affinities using `OMP_AFFINITY_FORMAT` and `OMP_DISPLAY_AFFINITY` ([see this page for details](https://docs.csc.fi/computing/running/performance-checklist/#hybrid-parallelization-in-mahti)). The thread affinity is printed into the sta

An example batch job script employing multiple threads can be found below. Here we submit a job using eight cores (and therefore eight threads). Notice how we match the number of threads and cores using `OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK`:

```
#!/bin/bash -l
#SBATCH --job-name=r_8threads
#SBATCH --account=<project>
#SBATCH --output=output_%j.txt
#SBATCH --error=errors_%j.txt
#SBATCH --partition=small
#SBATCH --time=00:05:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --nodes=1
#SBATCH --mem-per-cpu=2000

# load r-env-singularity
module load r-env-singularity/4.0.2

# Clean up prior TMPDIR and OMP_NUM_THREADS from .Renviron
if test -f ~/.Renviron; then
    sed -i '/TMPDIR/d' ~/.Renviron
    sed -i '/OMP_NUM_THREADS/d' ~/.Renviron
fi

# Specify a temp directory in .Renviron
echo "TMPDIR=/scratch/<project>" >> ~/.Renviron

# Bind thread and core numbers
echo "OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK" >> ~/.Renviron

# Run the R script
srun singularity_wrapper exec Rscript --no-save myscript.R
```
In a multi-core interactive job, the number of threads can be matched with the number of cores by running a multi-threaded version of the `start-r` or `start-rstudio-server` commands:

```
start-r-multithread # or
start-rstudio-server-multithread
```
