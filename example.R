#============================================================================================
#               E x a m p l e   S c r i p t   G r i z   C l u s t e r  
# 
# 1 pulls global variables into R 
#   ..global variables defined in slurm script or terminal
#   ..via command line, eg., < export VERBOSE=TRUE >
# 2 example parallel loop using foreach
#   ..includes example (commented-out) for reading in multiple file into array
# 
# run directly via command line < Rscript ./example.R >
# ..or submit a slurm script wih the Rscript call, as above
#
#============================================================================================
library(doParallel)
library(abind)

VERBOSE         = Sys.getenv("VERBOSE")         #verbose print
VERBOSE2        = Sys.getenv("VERBOSE2")        #prints for harmonic models
RUN_GETDATA     = Sys.getenv("RUN_GETDATA")     #process data or skip to quantile selection
MAKE_PLOTS      = Sys.getenv("MAKE_PLOTS")      #make plots, based on top runs
FDIR.in         = '/path/to/data/'              #main path to data

x = 1:100
y = 1:100


if(VERBOSE==TRUE){
  print('working1..')
}

if(MAKE_PLOTS==TRUE){
  plot(x,y,pch=18,col='red')
}

#-------------------------------------------------
# simple example of a foreach loop
#-------------------------------------------------
ncores    = parallel::detectCores()
registerDoParallel(cores = ncores)


ary       <- foreach(i=1:1000,.combine = 'c', .multicombine=TRUE) %dopar% {
               #do something in parallel
               t = paste0('there are ',i,' fish in the sea')
               return(t)
             }

#close access to all cores
doParallel::stopImplicitCluster()

#inspect array
str(ary)

#.....................................
#  parallel loop for IO much faster
#.....................................
#library(doParallel)
#library(abind)
#ncores    = parallel::detectCores()
#registerDoParallel(cores = ncores)

##file path location
#FPREFIX   <- paste0(FDIR.in,'/')

##get files for subset
##..get file list example line
#ls.main   <- list.files(path=FPREFIX,pattern='some_unique_id_in_file_name',recursive=F)

##get predictor vars from list
##..subset files (in ls.main) based on pattern
#find.x    = 'another_unique_id_in_file_name'
#ls.files  <- ls.main[grepl(pattern=find.x,ls.main)]

##combine fn for parallel loop
##..grep pattern
#acomb  <- function(...) abind(..., along=3)

##loop over files and pull into an array (ary)
##..use abind to combine all the files into an array
##..in the same order as in ls.files
#ary       <- foreach(i=1:length(ls.files),
#                     .combine = 'acomb', .multicombine=TRUE) %dopar% {
#               #RDS data has been processed to daily
#               t <- readRDS(paste0(FPREFIX,ls.files[i]))
#               return(t)
#             }
##close access to all cores
#doParallel::stopImplicitCluster()

##view structure of the array
#str(ary)

