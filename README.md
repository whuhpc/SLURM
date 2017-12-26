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

- **srun/**  这会运行一些非常简单的命令。在演示实例中，一个用单个进程，另一个用多进程。

- **python-job/**  演示一个简单的Python作业，使用一个CPU核心。

- **mpi-job/**  MPI作业示例，运行在3个节点和24个CPU内核上。还包括一个简单的MPI c++代码，以及一个编译脚本。

- **job-array/**  作业数组示例， 演示如何并行地在多个类似的输入脚本上运行可执行文件。

- **job-array2/** 另一个作业数组示例， 除非在这种情况下，处理被简化为文件名称(由Python分析)，不需要遵循常规的命名方案。实际上，文件名完全是任意的，用户只需将它们放在一个名为 * **data** * 的子目录中，然后将数组调整到适当的长度。

- **gpu-job/** GPU作业示例，该脚本加载了在NVIDIA GPU上运行的分子动力学软件包HOOMD-Blue。

- **pthread-job/** 多线程作业示例, 这项作业运行一个简单的Hello World Posix线程C代码。多线程作业通常只在单个节点上运行，并且只需要一个任务(即进程)，它会生成一组线程来在多个CPU内核中执行。 在多线程程序中必需有 --cpus-per-task 选项。

- **openmp-job/** 多线程作业示例， 该作业运行一个简单的具有多线程的OpenMP向量加法程序。多线程作业通常只在单个节点上运行，并且只需要一个任务(即进程)，它会生成一组线程来在多个CPU内核中执行。 在多线程程序中必需有 --cpus-per-task 选项。

- **epilog/** Epilog example. This job demonstrates how to invoke an epilog script after
your job for post-processing. This particular example looks for any files in your directory
that exceed 3 megabytes and compresses and archives those files. In practice, you might tweak
this to only compress larger files and to exclude any large input files you do not wish to compress.

- **slurm-ception/** Cool example but use with caution!

- **julia-job/** Example of running Julia on the cluster in serial and in parallel.
