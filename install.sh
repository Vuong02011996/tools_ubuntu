#!/bin/bash

# Install GPU drivers.
#sudo ubuntu-drivers autoinstall
#sudo reboot

# Install cuda 10.01
## link https://medium0.com/@stephengregory_69986/installing-cuda-10-1-on-ubuntu-20-04-e562a5e724a0
## Clean up
#sudo rm /etc/apt/sources.list.d/cuda* -y
#sudo apt remove --autoremove nvidia-cuda-toolkit -y
#sudo apt remove --autoremove nvidia-* -y
#
#sudo apt-get purge nvidia* -y
#sudo apt-get autoremove -y
#sudo apt-get autoclean -y
#
#sudo rm -rf /usr/local/cuda* -y
#
### Install
#sudo apt update
#sudo add-apt-repository ppa:graphics-drivers -y
#sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
#sudo bash -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64 /" > /etc/apt/sources.list.d/cuda.list'
#sudo bash -c 'echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64 /" > /etc/apt/sources.list.d/cuda_learn.list'
#sudo apt update
#sudo apt install cuda-10-1 -y
#
### Add PATH
#echo 'export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}' >> ~/.bashrc
#echo 'export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.bashrc
#source ~/.bashrc
#sudo ldconfig
#sudo apt install libcudnn7

# Install Anaconda

#rm -rf ~/anaconda3 ~/.condarc ~/.conda ~/.continuum
#sudo apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 -y
#wget -P /tmp https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
#sha256sum /tmp/Anaconda3-2020.02-Linux-x86_64.sh
#bash /tmp/Anaconda3-2020.02-Linux-x86_64.sh -y
#source /home/$USER/.bashrc
#conda config --set auto_activate_base false


# Docker
## Clear
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
## Install

### Set up docker repository
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
### Install docker engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

### Verify
sudo docker run hello-world



# Install Pycharm
# sudo snap install pycharm-community --classic
