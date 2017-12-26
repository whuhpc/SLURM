#!/bin/bash
#SBATCH --mail-user=<myemail@whu.edu.cn>
#SBATCH --mail-type=ALL
#SBATCH --nodes=3              # 3 nodes
#SBATCH --tasks-per-node=4     # 4 MPI processes per node
#SBATCH --time=0-00:10:00      # 10 minutes of wall time
#SBATCH --mem=1G               # 1 GB RAM per node
#SBATCH --output=job.log

# Load the latest GCC compiler and OpenMPI
module load GCC OpenMPI

# Build executable file, print node list, and run MPI program
make
echo $SLURM_JOB_NODELIST
srun ./mpi_pi  # srun is SLURM's version of mpirun/mpiexec
