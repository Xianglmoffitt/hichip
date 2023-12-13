#!/bin/bash

#SBATCH --job-name="03_proc_hic"
#SBATCH --time=10:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4


# This script is used to create HiC-Pro proc_hic command in HPC system

export PROJECT_DIR="/share/lab_teng/xiangliu/hichip_bo_new"
export RAW_DATA="$PROJECT_DIR/RawData"
export MAP_DATA="$PROJECT_DIR/hicpro_mapping"

#module load gcc/5.4.0

cd $PROJECT_DIR

/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/HiC-Pro -c config-hicpro.txt -i ${MAP_DATA}/bowtie_results/bwt2 -o proc_hic_out -s proc_hic -s quality_checks -p
