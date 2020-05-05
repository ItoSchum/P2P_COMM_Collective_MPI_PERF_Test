#!/bin/bash

rm ./slurm-*
for nodes in 1 2
do
    for ranks in 1 2 3 4 5 6
    do
        sbatch -N $nodes --ntasks-per-node=$ranks --gres=gpu:$ranks -t 3 ./slurmSpectrum.sh
        sleep 20s
    done
done

