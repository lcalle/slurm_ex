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
#-----SBATCH --array=0-17
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

#now run via Rscript
Rscript /path/to/example.R

echo "complete, check pdfs and RDS outputs.."


