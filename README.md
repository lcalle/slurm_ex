# slurm_ex
Example scripts and resources for running jobs on a SLURM cluster
- bash_profile: customize BASH command line w/ color schemes, alias, shortcuts
- cheatsheets: links to cheatsheets for the griz cluster, terminal and slurm commands, miniconda virtual environment (good for running R on a cluster), and vim commands
- example.R: R script for running R on a cluster, showing plots to local screen, running parallel loops using foreach for calculations and parallel read of data from files into an array
- example_slurmArray.R: similar to example.R, but for running the R script over multiple data folders in parallel on a cluster using the slurm array directive
- interactive_sesh.sh: request and access the compute node in an interactive session
- runNewR.sh: update header and library files so that software runs smoothly on the griz cluster
- sbatch_submitJobscript.sh: slurm job submission script, runs the example.R script on the griz cluster
- sbatch_submitJobscript.sh: slurm array job submission script, runs the example_slurmArray.R script on griz cluster
