#!/bin/bash
#SBATCH --job-name=test
#SBATCH --partition=k2-epsrc
#SBATCH --ntasks=32
#SBATCH --cpus-per-task=2
#SBATCH --time=6:00:00
#SBATCH --mem=50GB

module purge
#module load apps/python3/3.10.5/gcc-14.1.0
module load libs/nvidia-cuda/12.4.0/bin
module load compilers/gcc/14.1.0
#source /mnt/userapps/q13camb_apps/python/eqV2

source activate /mnt/scratch2/q13camb_scratch/perovskites/installation_stuff/EScAIP
#export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

python relax.py > output

