#source /share/apps/intel/bin/compilervars.sh -arch intel64 -platform linux
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/share/apps/R-3.6.1/lib64/R/lib/:/share/apps/intel/mkl/lib/intel64/:/share/apps/system/lib64:/share/apps/system/lib:/share/apps/system/lib64/openmpi/lib
export PATH=$PATH:/share/apps/R-3.6.1/bin:/share/apps/system/bin
#/share/apps/R/bin/R
C_INCLUDE_PATH=/share/apps/system/include
export C_INCLUDE_PATH
CPLUS_INCLUDE_PATH=/share/apps/system/include
export CPLUS_INCLUDE_PATH
module load mpi gdal gnu geos



