#!/bin/bash

#SBATCH --job-name="02_hicpro_mapping"
#SBATCH --time=8:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4

# This script is used to create HiC-Pro mapping command for HPC system

export PROJECT_DIR="/share/lab_teng/xiangliu/hichip_bo_new"
export RAW_DATA="$PROJECT_DIR/RawData"


cd $PROJECT_DIR

/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/HiC-Pro -c config-hicpro.txt -i $RAW_DATA -o hicpro_mapping -s mapping -s quality_checks -p
