# slurm_ex
Example scripts and resources for running jobs on a SLURM cluster
- __bash_profile__: customize BASH command line w/ color schemes, alias, shortcuts
- __cheatsheets__: links to cheatsheets for the griz cluster, terminal and slurm commands, miniconda virtual environment (good for running R on a cluster), and vim commands
- __example.R__: R script for running R on a cluster, showing plots to local screen, running parallel loops using foreach for calculations and parallel read of data from files into an array
- __example_slurmArray.R__: similar to example.R, but for running the R script over multiple data folders in parallel on a cluster using the slurm array directive
- __interactive_sesh.sh__: request and access the compute node in an interactive session
- __runNewR.sh__: update header and library files so that software runs smoothly on the griz cluster
- __sbatch_submitJobscript.sh__: slurm job submission script, runs the example.R script on the griz cluster
- __sbatch_submitJobscript.sh__: slurm array job submission script, runs the example_slurmArray.R script on griz cluster
