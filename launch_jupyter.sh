#!/bin/bash
#SBATCH -N 1
#SBATCH -p GPU
#SBATCH --ntasks-per-node 1
#SBATCH --gres=gpu:k80:4
#SBATCH -t 01:00:00
#SBATCH --verbose

#SBATCH --mail-user=khan74@illinois.edu
#SBATCH --mail-type=BEGIN

#SBATCH --job-name="test"
#SBATCH -C EGRESS

#echo commands to stdout
set -x

hostname

#run GPU program
cd /home/khan74

jupyter notebook --no-browser --ip=0.0.0.0
