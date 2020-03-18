# packer-ec2-bionic64-docker

## Description
This Packer template will 
- create EC2 image of Ubuntu Bionic64 with Docker version 18.09.2 installed
- put the image in us-east-1
- install and configure awscli for the image 
- copy `assets` folder together with all the content inside, from root of your repo the newly created EC2 image

## Rerquirements 
- Virtualbox installed
- Packer installed
- AWS Account
- Hashicorp TFE license
- Airgap package
- Bootstrap installer
- Valid SSL sertificate (fullchain and private key)

## How to use
- clone repo locally
```
git clone https://github.com/berchev/packer-ec2-bionic64-docker.git
```
- export your aws credentials:
```
export AWS_ACCESS_KEY_ID=XXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXX
```
- important note!!! Assests folder is not uploaded due to security reasons. This directory cantain sensitive information. Before use of this project you need to do the following:
  - create diretory called `assets` into you root directory of the repo 
  - place inside your Valid SSL sertificate (fullchain and private key)
  - bootstrap installer
  - airgap package
  - TFE license
- edit [bootstrap_docker_ce.sh](bootstrap_docker_ce.sh) according to your needs. there are comments that can led you to the important lines
- build the EC2 image with packer
```
packer build ubuntu_docker_ce_ami.json
```
