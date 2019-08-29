#!/bin/bash
#SBATCH --job-name=generate_PAN_analysis_%j
#SBATCH --output=generate_PAN_analysis_%j.log
#SBATCH --error=generate_PAN_analysis_%j.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user youremail@here.com
#SBATCH --nodes 1
#SBATCH --mem-per-cpu=100gb
#SBATCH --time=4-00:00:00
#SBATCH --account=juliemeyer
#SBATCH --qos=juliemeyer-b

module load anvio

anvi-pan-genome -g _inputNameOfGenome_-GENOMES.db -n _inputNameOfGenome_
