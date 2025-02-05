#!/bin/bash
#SBATCH --job-name=test
#SBATCH --partition=k2-epsrc-gpu
#SBATCH --time=12:00:00
#SBATCH --mem=100GB
#SBATCH --gres=gpu:a100:1

module purge
module load libs/gcc/14.1.0
module load libs/nvidia-cuda/11.8.0/bin
module load mpi/openmpi/5.0.3/gcc-14.1.0
module load libs/blas/3.12.0/gcc-14.1.0
module load lapack/3.12.0/gcc-9.3.0
module load apps/anaconda3/2024.06/bin

source activate /mnt/scratch2/q13camb_scratch/perovskites/installation_stuff/grace
source /mnt/scratch2/q13camb_scratch/perovskites/installation_stuff/lammps-new/plumed2/sourceme.sh
lmp=/mnt/scratch2/q13camb_scratch/perovskites/installation_stuff/grace/lammps/build_a100/lmp

$lmp -k on g 1 -sf kk -in  in.lammps &> output
