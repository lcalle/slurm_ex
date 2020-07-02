#!/bin/bash

#run an interactive session on wolverine
#..still requires that you update the session environment and load modules
#..once on compute node, activate R
#  source /path/to/runNewR.sh

#         partition   nodes memory        nodelist    run_something  bash (commandline)
salloc -p cel_lab_cpu -N1   --mem=5000 -w compute-0-2 srun           --pty bash
