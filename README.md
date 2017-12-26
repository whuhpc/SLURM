SLURM
=====

Test Commands
-------------

- **slurm-commands.sh**: 包含许多SLURM命令的例子，以及如何定制每个命令的输出

Test Scripts
------------

如果要提交这些脚本，请确保在使用前更改电子邮件。
提交作业到集群：

	sbatch SCRIPT_NAME.slurm

- **srun/** 这会运行一些非常简单的命令。在演示实例中，一个用单个进程，另一个用多进程。

- **python-job/** 演示一个简单的Python作业，使用一个CPU核心。

- **mpi-job/** 一个MPI作业的例子，运行在3个节点和24个CPU内核上。
还包括一个简单的MPI c++代码，以及一个编译脚本。

- **job-array/** Job array example, showing how to run an executable on multiple
similar input scripts in parallel.

- **job-array2/** Another job array example, except in this case the processing 
is simplified further as the file names (being analyzed by Python) do not need to
follow a regular naming scheme. In fact, the file names are completely arbitrary, 
the user just has to put them all in a subdirectory called **data** and then adjust
the array to the appropriate length. 

- **gpu-job/** GPU job example. This script loads HOOMD-Blue, a molecular dynamics
package that runs on NVIDIA GPUs.

- **pthread-job/** Multithreaded job example. This job runs a simple Hello World Posix
threads C code. Multithreaded jobs generally run on a single node and only require
a single task (i.e. process) that spawns a group of threads to execute across multiple
CPU cores. The --cpus-per-task option is needed in multithreaded programs.

- **openmp-job/** Multithreaded job example. This job runs a simple OpenMP vector addition
program with multithreading. Multithreaded jobs generally run on a single node and only require
a single task (i.e. process) that spawns a group of threads to execute across multiple
CPU cores. The --cpus-per-task option is needed in multithreaded programs.

- **epilog/** Epilog example. This job demonstrates how to invoke an epilog script after
your job for post-processing. This particular example looks for any files in your directory
that exceed 3 megabytes and compresses and archives those files. In practice, you might tweak
this to only compress larger files and to exclude any large input files you do not wish to compress.

- **slurm-ception/** Cool example but use with caution!

- **julia-job/** Example of running Julia on the cluster in serial and in parallel.
