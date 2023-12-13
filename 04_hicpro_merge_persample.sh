#!/bin/bash

#SBATCH --job-name="04_contactmap"
#SBATCH --time=8:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4


# This script is used to create HiC-Pro proc_hic command in HPC system

export PROJECT_DIR="/share/lab_teng/xiangliu/hichip_bo_new"
export RAW_DATA="$PROJECT_DIR/RawData"
export MAP_DATA="$PROJECT_DIR/proc_hic_out/hic_results"

#module load gcc/5.4.0

cd $PROJECT_DIR

#/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/HiC-Pro -c config-hicpro.txt -i ${MAP_DATA}/data -o contact_map -s merge_persample -s build_contact_maps -s ice_norm -p
/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/HiC-Pro -c config-hicpro.txt -i ${MAP_DATA}/data -o contact_map -s merge_persample
