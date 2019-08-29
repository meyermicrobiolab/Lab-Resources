#!/bin/bash
#SBATCH --job-name=generate_GENOME_database_%j
#SBATCH --output=generate_GENOME_database_%j.log
#SBATCH --error=generate_GENOME_database_%j.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user youremail@here.com
#SBATCH --nodes 1
#SBATCH --mem-per-cpu=100gb
#SBATCH --time=4-00:00:00
#SBATCH --account=juliemeyer
#SBATCH --qos=juliemeyer-b

module load anvio
anvi-gen-genomes-storage -e external-genomes.txt -o _inputNameOfGenome_-GENOMES.db
