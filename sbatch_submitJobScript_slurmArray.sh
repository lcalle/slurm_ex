#!/bin/sh
#SBATCH --job-name=exzm
#SBATCH --partition=cel_lab_large_cpu
#SBATCH --nodes=1
#-----SBATCH -n 1
#-----SBATCH --exclude=compute-0-17
#-----SBATCH  --mem=20000
#-----SBATCH --mem-per-cpu=40000
#SBATCH --cpus-per-task=1 #Number of cores per MPI rank
#-----SBATCH --ntasks=1        #Number of MPI ranks
#SBATCH --array=0-20%5 #array jobs 20, max of 5 jobs at a time
#-----SBATCH --output=/path/to/job_files/logs/jobarray_%A_%a.out # Standard output and error log
#-----SBATCH --output=/path/to/job_files/logs/quantileselection_%a.out
## Command(s) to run:

echo hostname
source /path/to/runNewR.sh

#global variables accessed via example.R
export VERBOSE="TRUE"         #verbosity
export VERBOSE2="FALSE"       #verbosity extra 
export MAKE_PLOTS="TRUE"      #make plots
export CONSTRAINT_TYPE="Smap" #other options
 
#......................................................................
# SLURM ARRAY JOB
# -- if using SBATCH directive: SBATCH --array=0-XX
#    ..where XX is the number of folders (sites, stations, etc)
#    ..to run Rscript
# -- array jobs allow you to run Rscript
#    ..for each unique folder in parallel on a cluster
#.......................................................................
#read a text file of folder names into a BASH array
#..run the R script for each site
#..site ID can  be indexed via the SLURM array call on Line 11
#..NOTE: bash arrays are zero-indexed
readrray -t SITES_ALL < /path/to/textfile/site_names.txt

#export SITE variable to use in the Rscript
export SITE_ID=SITES_ALL[${SLURM_ARRAY_TASK_ID}]

#now run via Rscript
Rscript /path/to/example_slurmArray.R

echo "complete, check pdfs and RDS outputs.."

