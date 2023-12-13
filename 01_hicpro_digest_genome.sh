#!/bin/bash

#SBATCH --job-name="01_hicpro_digest"
#SBATCH --time=12:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4

# This script is used to generate genome fragment based on arima cut site (^GATC ^GANTC) for Hicpro usage

export PROJECT_DIR="/share/lab_teng/xiangliu/hichip_bo_new"

cd $PROJECT_DIR

/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/utils/digest_genome.py -r Mboi -o Mboi_GRCh37.bed /share/lab_teng/data/genomes/GRCh37/GRCh37.primary_assembly.genome.fa
