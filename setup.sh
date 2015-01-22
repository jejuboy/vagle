#!/bin/bash

# Install Git
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y python-software-properties
sudo apt-add-repository -y ppa:ansible/ansible

# Install Ansible
sudo apt-get update
sudo apt-get install -y ansible

# Initialize Ansible
cd /home/vagrant
mkdir -p workspace/jejuboy
cd workspace/jejuboy
git clone https://github.com/jejuboy/vagle.git
chown -R vagrant:vagrant ~/workspace/
cd vagle
ansible-playbook -i hosts site.yml
