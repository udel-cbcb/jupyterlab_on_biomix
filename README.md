# JupyterLab on BIOMIX HPC Cluster 
This repository hosts information about running jupyterlab on [BIOMIX HPC cluster](https://bioit.dbi.udel.edu/BIOMIX/BIOMIX-cluster.html) GPU nodes.

## Submit the slurm job

sbatch jupyterlab_on_biomix_slurm.sh 
Submitted batch job 324335

## Find out the SSH forwarding port used
When it is completed we have the log named slurm-324335.out with output similar to this.

$ tail slurm-324335.out 
[I 2023-10-16 17:48:35.244 ServerApp]     http://127.0.0.1:8430/lab?token=97d7ed87d1122251bc742e48ec30623ccb69e70f2fadcf82
[I 2023-10-16 17:48:35.244 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 2023-10-16 17:48:35.271 ServerApp] 
    
    To access the server, open this file in a browser:
        file:///home/your_username/.local/share/jupyter/runtime/jpserver-563487-open.html
    Or copy and paste one of these URLs:
        http://localhost:8430/lab?token=97d7ed87d1122251bc742e48ec30623ccb69e70f2fadcf82
        http://127.0.0.1:8430/lab?token=97d7ed87d1122251bc742e48ec30623ccb69e70f2fadcf82
[I 2023-10-16 17:48:35.280 ServerApp] Skipped non-installed server(s): bash-language-server, dockerfile-language-server-nodejs, javascript-typescript-langserver, jedi-language-server, julia-language-server, pyright, python-language-server, python-lsp-server, r-languageserver, sql-language-server, texlab, typescript-language-server, unified-language-server, vscode-css-languageserver-bin, vscode-html-languageserver-bin, vscode-json-languageserver-bin, yaml-language-server


## From your local computer, run the following command

ssh -L 8430:localhost:8430 your_username@biomix

## Open web browser from your local computer, and point it to
http://localhost:8430/lab?token=97d7ed87d1122251bc742e48ec30623ccb69e70f2fadcf82


