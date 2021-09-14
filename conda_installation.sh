
## --------------------------------------------------------------- ##
## Conda Installation for Ubuntu in Windows Subsystem for Linux (WSL)
## --------------------------------------------------------------- ##

##----------------------------------------##
## Download Conda
##----------------------------------------##

## Go to https://repo.continuum.io/archive to find the list of Anaconda releases
## Anaconda3-5.3.1-Linux-x86_64.sh

## From the terminal run wget https://repo.continuum.io/archive/[YOUR VERSION]
cd /mnt/e/NGS/conda_linux
wget https://repo.continuum.io/archive/Anaconda3-5.3.1-Linux-x86_64.sh

##----------------------------------------##
## Install
##----------------------------------------##

## Run the installation script: $ 
bash Anaconda3-5.3.1-Linux-x86_64.sh
## installed in the location
## [/home/vishal/anaconda3]

## Close the terminal and reopen it to reload .bash configs.

## To test that it worked, run following
which python
## It should print a path that has anaconda in it.

##----------------------------------------##
## Add Anaconda to the PATH
##----------------------------------------##

## Manually add the Anaconda bin folder to your PATH. To do this, I added 
export PATH=/home/vishal/anaconda3/bin:$PATH

##----------------------------------------##
## Set up Channels
##----------------------------------------##

## After installing conda you will need to add the bioconda channel 
## as well as the other channels bioconda depends on. It is important 
## to add them in this order so that the priority is set correctly 
## (that is, conda-forge is highest priority).

## The conda-forge channel contains many general-purpose packages 
## not already found in the defaults channel.

conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

##----------------------------------------##
## Install packages
##----------------------------------------##

## Bioconda is now enabled, so any packages on 
## the bioconda channel can be installed into the 
## current conda environment:

## Example 
conda install bwa

##----------------------------------------##
## Link Ubuntu Jupyter Notebook directory with my notebok drive in C drive
##----------------------------------------##

## C:/Users/visha/Documents/Jupy_linux
## This directory will be used for keeping my notebook files in Windows
cd~
ln -s /mnt/c/Users/visha/Documents/Jupy_linux

## Now when you open Jupyter Notebook using the command in line29
## you should see a notebooks folder that has everything
## in your C drive Jupyter Notebook Folder has

##----------------------------------------##
## Open Jupyter Notebook
##----------------------------------------##
## To open jupyter, type 
jupyter notebook --no-browser
## The no browser flag will still run Jupyter on port 8888, 
## but it won't pop it open automatically. it's necessary since 
## you don't have a browser (probably) in your subsystem. 
## In the terminal, it will give you a link to paste into your browser. 
## If it worked, you should see your notebooks!

##----------------------------------------##
## References
##----------------------------------------##

## https://bioconda.github.io/user/install.html
## https://gist.github.com/kauffmanes/5e74916617f9993bc3479f401dfec7da
