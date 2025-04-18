#!/bin/bash
#SBATCH --job-name=test
#SBATCH --partition=k2-epsrc-gpu-a100
#SBATCH --time=02:00:00
#SBATCH --ntasks=1
#SBATCH --mem=20GB
#SBATCH --gres=gpu:a100:1

module purge
module load python3/3.10.5/gcc-9.3.0
module load libs/nvidia-cuda/12.4.0/bin

source /mnt/scratch2/q13camb_scratch/perovskites/installation_stuff/packages/fairchem/bin/activate

export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

python relax.py > output

