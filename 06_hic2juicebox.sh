#!/bin/bash

#SBATCH --job-name="05_hic2jucie"
#SBATCH --time=48:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12


# This script is used to create HiC-Pro proc_hic command in HPC system

export PROJECT_DIR="/share/lab_teng/xiangliu/ben_ebv_hichip/contact_map_w_ebv_size"

#module load gcc/5.4.0

cd $PROJECT_DIR

/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/utils/hicpro2juicebox.sh -i hic_results/data/control_A/control_A.allValidPairs -g /share/lab_teng/data/software/HiC-Pro_3.1.0/annotation/chrom_hg19_EBV.sizes -r /share/lab_teng/xiangliu/ben_ebv_hichip/Mboi_GRCh37_virus.bed -j /share/lab_teng/xiangliu/hic_analysis/juicer/scripts/juicer_clt.jar 
/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/utils/hicpro2juicebox.sh -i hic_results/data/control_B/control_B.allValidPairs -g /share/lab_teng/data/software/HiC-Pro_3.1.0/annotation/chrom_hg19_EBV.sizes -r /share/lab_teng/xiangliu/ben_ebv_hichip/Mboi_GRCh37_virus.bed -j /share/lab_teng/xiangliu/hic_analysis/juicer/scripts/juicer_clt.jar 
/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/utils/hicpro2juicebox.sh -i hic_results/data/control_C/control_C.allValidPairs -g /share/lab_teng/data/software/HiC-Pro_3.1.0/annotation/chrom_hg19_EBV.sizes -r /share/lab_teng/xiangliu/ben_ebv_hichip/Mboi_GRCh37_virus.bed -j /share/lab_teng/xiangliu/hic_analysis/juicer/scripts/juicer_clt.jar 
/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/utils/hicpro2juicebox.sh -i hic_results/data/KO_A/KO_A.allValidPairs -g /share/lab_teng/data/software/HiC-Pro_3.1.0/annotation/chrom_hg19_EBV.sizes -r /share/lab_teng/xiangliu/ben_ebv_hichip/Mboi_GRCh37_virus.bed -j /share/lab_teng/xiangliu/hic_analysis/juicer/scripts/juicer_clt.jar 
/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/utils/hicpro2juicebox.sh -i hic_results/data/KO_B/KO_B.allValidPairs -g /share/lab_teng/data/software/HiC-Pro_3.1.0/annotation/chrom_hg19_EBV.sizes -r /share/lab_teng/xiangliu/ben_ebv_hichip/Mboi_GRCh37_virus.bed -j /share/lab_teng/xiangliu/hic_analysis/juicer/scripts/juicer_clt.jar 
/share/lab_teng/data/software/HiC-Pro_3.1.0/bin/utils/hicpro2juicebox.sh -i hic_results/data/KO_C/KO_C.allValidPairs -g /share/lab_teng/data/software/HiC-Pro_3.1.0/annotation/chrom_hg19_EBV.sizes -r /share/lab_teng/xiangliu/ben_ebv_hichip/Mboi_GRCh37_virus.bed -j /share/lab_teng/xiangliu/hic_analysis/juicer/scripts/juicer_clt.jar 
