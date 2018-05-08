#!/bin/bash


#Setup 
mkdir $HOME/tools
mkdir $HOME/workspace

#Downloads
cd $HOME/tools
wget https://releases.hashicorp.com/packer/1.2.3/packer_1.2.3_linux_amd64.zip
wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip 

unzip packer_1.2.3_linux_amd64.zip
unzip terraform_0.11.7_linux_amd64.zip

mkdir archive
mv packer_1.2.3_linux_amd64.zip archive
mv terraform_0.11.7_linux_amd64.zip archive


#Install
sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible


