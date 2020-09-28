**Using threading to improve performance**

The `r-env-singularity` module has been configured to use the Intel® Math Kernel Library (MKL), enabling the execution of data analysis tasks using multiple threads. For more information on threading, see [this website](https://software.intel.com/content/www/us/en/develop/documentation/mkl-linux-developer-guide/top/managing-performance-and-memory/improving-performance-with-threading.html). 

By default, `r-env-singularity` utilizes a single thread. While users may set a desired number of threads for a particular job, the benefits of this in terms of computation times depend on the analysis in question. Because of this, we encourage experimenting with different thread numbers and benchmarking your code using a small example data set and, for example, the R package `microbenchmark` (installed as part of the module).

The module uses OpenMP threading technology and the number of threads can be controlled using the environment variable `OMP_NUM_THREADS`. In practice, the number of threads is set to match the number of cores used for the job. To further improve the performance of multi-threaded tasks, OpenMP threads can be bound to specific cores using `OMP_PLACES=cores`. When running batch jobs, it is also good practice to ensure correct thread affinity using the variables `OMP_AFFINITY_FORMAT` and `OMP_DISPLAY_AFFINITY` (see [this page for additional details](https://docs.csc.fi/computing/running/performance-checklist/#hybrid-parallelization-in-mahti)). 

An example of a batch job script using multiple threads can be found below. Here we submit a job using eight cores (and therefore eight threads). Notice how we can match the number of threads and cores using `OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK`:

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

module load r-env-singularity/3.6.3

if test -f ~/.Renviron; then
    sed -i '/TMPDIR/d' ~/.Renviron
fi

echo "TMPDIR=/scratch/<project>" >> ~/.Renviron

echo "OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK" > ~/.Renviron
echo "OMP_PLACES=cores" > ~/.Renviron
echo "OMP_AFFINITY_FORMAT=Process %P level %L thread %0.3n affinity %A" > ~/.Renviron
echo "OMP_DISPLAY_AFFINITY=true" > ~/.Renviron

srun singularity_wrapper exec Rscript --no-save myscript.R
```

If running a multi-core interactive job, the number of threads can be matched with the number of cores reserved for the job by adding the following to your R code. We also set other environment variables, similar to what is done in the batch job script.

```
var.name  <- "OMP_NUM_THREADS"
var.value <- as.numeric(future::availableCores())

args = list(var.value)
names(args) = var.name
do.call(Sys.setenv, args)

Sys.setenv(OMP_PLACES = "cores")
Sys.setenv(OMP_AFFINITY_FORMAT = "Process %P level %L thread %0.3n affinity %A")
Sys.setenv(OMP_DISPLAY_AFFINITY = "true")
```
