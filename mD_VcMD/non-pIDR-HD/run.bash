#!/bin/bash

# [1] NVT ensemble
${GMX}/gmx_mpi grompp  -f ../run.mdp -c  ../../../npt_1000_Parrinello-Rahman/n1/posre.gro  -p ../../../top_1000/md.top  -o run.tpr

# [2] Iteration 2 (Continue from the previous iteration)
##${GMX}/gmx_mpi grompp  -f ../run.mdp -c  ../../0/n1/run.gro  -p ../../../top_1000/complex_nonP_before_md1.top  -o run.tpr

# [3] Iteration 3 (Re-setting the initial configurations from the entire ensemble)
##${GMX}/gmx_mpi grompp  -f ../run.mdp -c  ../../0/next_conf/n1/run.gro  -p ../../../top_1000/complex_nonP_before_md1.top  -o run.tpr
 

${GMX}/gmx_mpi mdrun  -deffnm run  -plumed ../plumed.dat 


