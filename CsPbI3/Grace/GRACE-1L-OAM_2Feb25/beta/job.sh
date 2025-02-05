#!/bin/bash
#SBATCH --job-name=test
#SBATCH --partition=k2-epsrc
#SBATCH --time=05:00:00
#SBATCH --ntasks=16
#SBATCH --mem=100GB

module purge

module load apps/anaconda3/2024.06/bin

source activate /mnt/scratch2/q13camb_scratch/perovskites/installation_stuff/grace 
#
python3 relax.py >> output
