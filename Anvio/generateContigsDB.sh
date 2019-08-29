#!/bin/bash
#SBATCH --job-name=generate_contigs_gff_%j
#SBATCH --output=generate_contigs_%j.log
#SBATCH --error=generate_contigs%j.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user youremail@here.com
#SBATCH --nodes 1
#SBATCH --mem-per-cpu=100gb
#SBATCH --time=4-00:00:00
#SBATCH --account=juliemeyer
#SBATCH --qos=juliemeyer-b

module load ufrc

for i in `ls *.fa | awk -F "/" '{print $1}' | sed "s/.fa//g"`
do
  anvi-gen-contigs-database -f "$i".fa -o "$i".db --external-gene-calls "$i"_gene_calls.txt -n "$i"
  anvi-import-functions -c "$i".db -i "$i"_gene_annot.txt
  anvi-run-hmms -c "$i".db
done
