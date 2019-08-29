#!/bin/bash
#SBATCH --job-name=reformatFasta_%j
#SBATCH --output=reformatFasta_%j.log
#SBATCH --error=reformatFasta_%j.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user youremail@here.com
#SBATCH --nodes 1
#SBATCH --mem-per-cpu=100gb
#SBATCH --time=4-00:00:00
#SBATCH --account=juliemeyer
#SBATCH --qos=juliemeyer-b

module load anvio

for i in *.fa
do
     anvi-script-reformat-fasta $i -o r_$i --min-len 0 --simplify-names
done

mkdir originalFastaFiles
mv -- !(r_*.fa) originalFastaFiles
