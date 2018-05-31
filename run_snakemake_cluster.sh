source activate rnaseq_charmer

snakemake --snakefile Snakefile \
    -j 499 \
    --cluster-config cluster.json \
    --cluster "bsub \
    -m {cluster.group} \
    -P {cluster.allocation} \
    -q {cluster.queue} \
    -n {cluster.tasks} \
    -R {cluster.resources} \
    -W {cluster.walltime} \
    -J {cluster.jobname} \
    -o {cluster.output} \
    -e {cluster.error}"

source deactivate