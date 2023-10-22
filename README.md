# JupyterLab on BIOMIX HPC Cluster 
This repository hosts information about running jupyterlab on [BIOMIX HPC cluster](https://bioit.dbi.udel.edu/BIOMIX/BIOMIX-cluster.html) GPU nodes.

## Submit the slurm job on BIOMIX using sbatch command 

```
sbatch jupyterlab_on_biomix_slurm.sh 
```
Submitted batch job 324335

## Find out the SSH forwarding port used
When it is completed we have the log named slurm-324335.out with output similar to this.

```
tail slurm-324335.out
```
    To access the server, open this file in a browser:
        file:///home/your_username/.local/share/jupyter/runtime/jpserver-563487-open.html
    Or copy and paste one of these URLs:
        http://localhost:8430/lab?token=97d7ed87d1122251bc742e48ec30623ccb69e70f2fadcf82
        http://127.0.0.1:8430/lab?token=97d7ed87d1122251bc742e48ec30623ccb69e70f2fadcf82

In this case, the SSH forwarding port is "8430". Note this port number will be different each time you submit the above slurm script. Keep a note of it, you will use it in the following steps.

## From your local computer, run the following command

```
ssh -L 8430:localhost:8430 your_username@biomix
```

## Open web browser from your local computer, and point it to the following URL
http://localhost:8430/lab?token=97d7ed87d1122251bc742e48ec30623ccb69e70f2fadcf82


