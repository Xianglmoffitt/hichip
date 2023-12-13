#!/bin/bash

#SBATCH --job-name="hichipper"
#SBATCH --time=24:00:00
#SBATCH --mem-per-cpu=8G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5

# This script is used to create HiC-Pro proc_hic command in HPC system

export PROJECT_DIR="/share/lab_teng/xiangliu/hichip_bo_new"
export YAML="$PROJECT_DIR/hichipper_analysis/config_2.yaml"
export OUT_DIR="$PROJECT_DIR/hichipper_analysis/results"

#module load gcc/5.4.0
module load R/3.6.3-foss-2020a
module load BEDTools/2.29.2-GCC-10.2.0

cd $PROJECT_DIR
hichipper --out hichipper_test_out_3 $YAML 
