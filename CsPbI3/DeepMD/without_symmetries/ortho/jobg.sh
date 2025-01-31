#!/bin/bash
#SBATCH --job-name=test
#SBATCH --partition=k2-epsrc-gpu
#SBATCH --time=04:00:00
#SBATCH --ntasks=1
#SBATCH --mem=100GB
#SBATCH --gres=gpu:v100:1

module purge
module load libs/nvidia-cuda/11.8.0/bin
module load compilers/gcc/14.1.0

source activate /mnt/scratch2/q13camb_scratch/perovskites/installation_stuff/DeepMD

export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

python relax.py > output

