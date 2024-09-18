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
singularity build --sandbox i-wrf docker://ncar/iwrf:latest
```
