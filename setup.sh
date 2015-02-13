#!/bin/bash

# Install Git
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y python-software-properties

# Install Ansible
sudo apt-add-repository -y ppa:ansible/ansible
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
