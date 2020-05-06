#!/bin/bash

for i in slurm-*
do
    echo "--------------------------------------"
    echo "$i:"
    echo ""
    tail -n 100 "$i"
    echo ""
done