# packer-ec2-bionic64-docker

## Description
This Packer template will create EC2 image of Ubuntu Bionic64 with Docker version 18.09.1 installed. The image will be in us-east-1.

## Rerquirements 
- Virtualbox
- Packer

## How to use
- clone repo locally
- export AWS_ACCESS_KEY_ID
- export AWS_SECRET_ACCESS_KEY
- packer build ubuntu_docker_ce_ami.json
