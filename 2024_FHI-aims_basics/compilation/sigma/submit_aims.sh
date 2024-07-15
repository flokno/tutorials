#!/bin/bash -l

#SBATCH -J aims
#SBATCH -D ./
#SBATCH --mail-type=end,fail
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --ntasks-per-core=1
#SBATCH -t 00:59:00
#SBATCH --account=liu-2019-26
#SBATCH --reservation=tutorial-2024-04-25

fil=aims.out

echo $SLURM_JOB_ID > $fil

bin=/home/x_flokn/local/FHIaims/build_231212/aims.231208.scalapack.mpi.x

mpprun $bin 2>&1 >> $fil

# run_aims 2>&1 >> $fil

