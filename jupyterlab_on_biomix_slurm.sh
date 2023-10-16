#!/bin/bash
#SBATCH --job-name=jupyter
#SBATCH --partition=gpu2
#SBATCH --account=gpu2
#SBATCH --mem=150G
#SBATCH --time=30-00:00

#Go to the folder you wanna run jupyter in, by default is home directory.
cd $HOME

#Pick a random or predefined port
port=$(shuf -i 6000-9999 -n 1)

#Forward the picked port to the biomix on the same port. 
/usr/bin/ssh -N -f -R $port:localhost:$port biomix 

#Start the notebook
/usr/local/bin/jupyter lab --no-browser --port $port
