# Point to Point Communication Collective MPI Performance Test


## Getting started

These instructions will get you compiling and running the programs in no time. The structure of the repo is separated roughly in two partitions: `assign3_to_final` contains the source code to build the benchmarking program for CSCI6360 Parallel Programming final project.

## Assignmet 3 to Final

The main program `gol-main.c` runs the MPI and CUDA version of Conway's Game of Life algorithm. The algorithm is derived from Assignment 3's deliverable and it is by the courtesy of Lorson Blair. ph.D. at Department of Computer Science at RPI. 

## Compiling

First thing first, get to the directory `assignment3_to_final/` and open the Makefile. In the script, make sure that the first few parameters have the preferable settings that you need. Once done checking, you should be able to simply send the `make` command. In the terminal connected to AiMOS or any sort of parallel system, enter:

```bash
make
```

And the Makefile will handle the rest from here.

## Running the test

The gol-main.c is the main source code file that contains the test. After a successful compilation, you should get an executable called `gol-cuda-mpi-exe`. To execute it, you need to imput another 5 parameters. These parameters are:

For instance, you can issue the following in the terminal:

```Bash
sbatch -N 1 --ntasks-per-node=6 --gres=gpu:6 -t 5 ./slurmSpectrum.sh
```

## Authors

- [Lorson Blair](blairl@rpi.edu)
- [Yitao Shen](sheny20@rpi.edu)
- [Jinqiang Jiang](jiangj7@rpi.edu)
- [Charly Huang](huangc11@rpi.edu)

