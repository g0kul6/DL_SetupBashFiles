#!/bin/bash

#some art
sudo apt install figlet
figlet “Deep Reinforcement learning”

echo "Fuck everything bash script rules"  

#env name
echo "Enter the env name(choose wisely):"  
read env_name
echo "your choice: $env_name"

#python version
echo "Enter the pytohn version you want(prefarable:3.7):"
read python_version

#conda env creation and mamba installtion
conda create -n $env_name python=$python_version
eval "$(conda shell.bash hook)"
conda activate $env_name
conda install -c conda-forge mamba

echo "for me I like to install pytorch first no matter what"
mamba install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch-lts

#gym installation 
mamba install -c conda-forge gym

echo"environment is created get started with DRL"
