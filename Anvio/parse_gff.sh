
#!/bin/bash
#SBATCH --job-name=parse_gff_%j
#SBATCH --output=parse_gff_%j.log
#SBATCH --error=parse_gff_%j.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user youremail@here.com
#SBATCH --nodes 1
#SBATCH --mem-per-cpu=100gb
#SBATCH --time=4-00:00:00
#SBATCH --account=juliemeyer
#SBATCH --qos=juliemeyer-b


module load python
for i in `ls *.gff | awk -F "/" '{print $1}' | sed "s/.gff//g"`
do
python gff_parser.py "$i".gff --gene-calls "$i"_gene_calls.txt --annotation "$i"_gene_annot.txt
done
