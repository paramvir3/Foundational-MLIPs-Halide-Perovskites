#!/bin/bash
#SBATCH --job-name=test
#SBATCH --partition=k2-epsrc
#SBATCH --time=1:00:00
#SBATCH --ntasks=10
#SBATCH --mem=10GB
#
module purge
module load libs/nvidia-cuda/12.8.0/bin
module load apps/anaconda3/2024.10/bin
#
source activate pet-mad
conda install spglib
#conda install ase
#
python relax.py &> output
