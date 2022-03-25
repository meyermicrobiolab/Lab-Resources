import sys
import os
import glob

try:
     email = sys.argv[1]
except:
    email = input("No email was provided. Please enter an email")

files =glob.glob("*.fastq.gz")
files.sort()
directory = os.path.abspath(os.getcwd())

genomes=[]
##REMOVE THE .py FILE FROM LIST


i=0
if len(files)%2 == 0:
    files.sort()
    while i < len(files):
        name = (files[i].split("_")[0])
        name = "-".join(name.split("-")[1:-1])
        forward_read = files[i].split("_")
        reverse_read = files[i+1].split("_")
        if ('R1' in forward_read) and ('R2' in reverse_read):
            forward_read.remove('R1')
            reverse_read.remove('R2')
            if forward_read == reverse_read:
                genomes.append(name)
                config_file = open((name +".txt"),"w+")
                config_file.write("[general]\n")
				f.write(("mkdir {}_map\n").format(name))
                config_file.write(("project_name = {}\n").format(name))
                config_file.write(("researcher_email = {}\n").format(email))
                config_file.write(("input_directory = {}\n").format(directory))
                config_file.write(("output_directory = {}\n").format(directory))
                config_file.write("\n")
                config_file.write("[files]\n")
                config_file.write(("pair_1 = {}\n").format(files[i]))
                config_file.write(("pair_2 = {}\n").format(files[i+1]))
                i+=2
            else: print("Check your file names. One pair doesnt match.")
        else: print("No way to tell Forward from Reverse reads. Check your R1s and R2s.")
else: print("There are an uneven number of files. Check to make sure you have all the files you need.")


###Write the quality control file
quality_control = open("1_qualityControl.txt","w+")
quality_control.write(("#!/bin/bash\n\
#SBATCH --job-name=QC_%j\n\
#SBATCH --output=QC_%j.log\n\
#SBATCH --error=QC_%j.err\n\
#SBATCH --mail-type=BEGIN,END,FAIL\n\
#SBATCH --mail-user={}\n\
#SBATCH --ntasks=1\n\
#SBATCH --cpus-per-task=2\n\
#SBATCH --mem-per-cpu=50gb\n\
#SBATCH --time=4-00:00:00\n\
#SBATCH --account=juliemeyer\n\
#SBATCH --qos=juliemeyer-b\n"
).format(email))
quality_control.write("\npwd; hostname; date\n\nmodule load fastqc\nfastqc *.fastq.gz\n\n")
quality_control.write("module load illumina-utils/2.11\n")

for i in genomes:
    quality_control.write(("iu-filter-quality-minoche {}.txt\n").format(i))
quality_control.write("\ngzip *.fastq\n\n#remove illumina adaptors\nmodule load trimmomatic\n")
for i in genomes:
    quality_control.write(("trimmomatic PE -phred33 -summary {}_trim_stats.txt {}-QUALITY_PASSED_R1.fastq.gz {}-QUALITY_PASSED_R2.fastq.gz {}_trimmed_paired_R1.fastq.gz {}_trimmed_unpaired_R1.fastq.gz {}_trimmed_paired_R2.fastq.gz {}_trimmed_unpaired_R2.fastq.gz ILLUMINACLIP:${HPC_TRIMMOMATIC_ADAPTER}/TruSeq3-PE.fa:2:30:10 ILLUMINACLIP:${HPC_TRIMMOMATIC_ADAPTER}/NexteraPE-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36\n").format(i,i,i,i,i,i,i))
quality_control.write("\n\nfastqc *trimmed_paired_R*.fastq.gz\n")

# ###Write the Assembly File
assembly = open("2_assembly.txt","w+")
assembly.write(("#!/bin/bash\n\
#SBATCH --job-name=assembly_%j\n\
#SBATCH --output=assembly_%j.log\n\
#SBATCH --error=assembly_%j.err\n\
#SBATCH --mail-type=BEGIN,END,FAIL\n\
#SBATCH --mail-user={}\n\
#SBATCH --ntasks=1\n\
#SBATCH --cpus-per-task=2\n\
#SBATCH --mem-per-cpu=50gb\n\
#SBATCH --time=4-00:00:00\n\
#SBATCH --account=juliemeyer\n\
#SBATCH --qos=juliemeyer-b\n"
).format(email))

assembly.write("\npwd; hostname; date\n\nmodule load spades\n")
for i in genomes:
    assembly.write(("spades.py --isolate -1 {}_trimmed_paired_R1.fastq.gz -2 {}_trimmed_paired_R2.fastq.gz -o {}_assembly/\n").format(i,i,i))


quast = open("3_quast.txt","w+")
quast.write(("#!/bin/bash\n\
#SBATCH --job-name=quast_%j\n\
#SBATCH --output=quast_%j.log\n\
#SBATCH --error=quast_%j.err\n\
#SBATCH --mail-type=BEGIN,END,FAIL\n\
#SBATCH --mail-user={}\n\
#SBATCH --ntasks=1\n\
#SBATCH --cpus-per-task=2\n\
#SBATCH --mem-per-cpu=50gb\n\
#SBATCH --time=4-00:00:00\n\
#SBATCH --account=juliemeyer\n\
#SBATCH --qos=juliemeyer-b\n"
).format(email))
quast.write("\npwd; hostname; date\n\nmodule load spades\n")
quast.write("\nmodule purge\n\nmodule load quast\n")
for i in genomes:
    quast.write(("quast.py -o quast_{} {}_assembly/contigs.fasta\n").format(i,i)
