#!/bin/bash
#SBATCH --job-name=prokka_for_anvio_%j
#SBATCH --output=prokka_for_anvio_%j.log
#SBATCH --error=prokka_for_anvio_%j.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user youremail@here.com
#SBATCH --nodes 1
#SBATCH --mem-per-cpu=100gb
#SBATCH --time=4-00:00:00
#SBATCH --account=juliemeyer
#SBATCH --qos=juliemeyer-b

module load prokka
for i in `ls *.fa | awk -F "/" '{print $1}' | sed "s/.fa//g"`
do
     prokka --outdir pk_$i --prefix  $i $i.fa --cpus 20
done
