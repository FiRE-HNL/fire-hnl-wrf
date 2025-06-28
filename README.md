# FiRE-HNL WRF Module

This repository serves as the operational component of running WRF
for the FiRE-HNL framework.

## Objectives

## Getting Started

We will need to build our own container with Python if we want to use Python to call WRF.
If not, all we need to do is call WRF from the run scripts. Ideally, we want Python to
download the data and other details, so we should at least add Python3 to the container.

## TODO

- Test the iwrf container
- Add Python3 to the base iwrf container
- Create Python scripts to setup WRF
- Execute bash script to run WRF

## Simple WRF Demo

Downloading the i-WRF container:

```bash
singularity build --sandbox /lscratch/jacaraba/container/i-wrf docker://ncar/iwrf:20241203
```

Downloading openeuler container:

```bash
module load singularity; singularity build --sandbox /lscratch/jacaraba/container/openeuler-wrf docker://openeuler/wrf:4.7.0-oe2403sp1
```

### Using WRF from the Containers

The i-WRF container has WRF available under /home/wrfuser.
An example on how to quickly test WRF runs properly is listed below.

```bash
```