source activate ngs_data_charmer
snakemake --snakefile Snakefile --cores "$1"
source deactivate
