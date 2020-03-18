#!/usr/bin/env bash

# Install Docker CE Ubuntu AMI

sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    awscli

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88



sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y docker-ce=5:18.09.2~3-0~ubuntu-bionic docker-ce-cli=5:18.09.2~3-0~ubuntu-bionic containerd.io

sudo groupadd docker
sudo usermod -aG docker ubuntu

sudo systemctl enable docker

aws configure set aws_access_key_id YOUR_AWS_ACCESS_KEY

aws configure set aws_secret_access_key YOUR_AWS_SECURITY_KEY

aws configure set default.region us-east-1

sudo mkdir -p /opt/tfe-installer/

sudo tar -zvxf /tmp/assets/replicated.tar.gz -C /opt/tfe-installer/

cp /tmp/assets/fullchain.pem /opt/tfe-installer/fullchain.pem

cp /tmp/assets/privkey.pem /opt/tfe-installer/privkey.pem

cp /tmp/assets/Terraform_Enterprise_408.airgap /opt/tfe-installer/Terraform_Enterprise_408.airgap

cp /tmp/assets/hashicorp-support-sofia.rli /opt/tfe-installer/hashicorp-support-sofia.rli