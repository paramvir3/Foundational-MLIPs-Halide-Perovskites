#!/bin/bash
#SBATCH --job-name=test
#SBATCH --partition=k2-epsrc
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=2
#SBATCH --time=4:00:00
#SBATCH --mem=50GB

module purge

module load apps/anaconda3/2024.10/bin

source activate /mnt/scratch2/q13camb_scratch/perovskites/installation_stuff/orbff

python relax.py > output

