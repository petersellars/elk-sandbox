# ELK Sandbox

# Terraform
This repository uses [Terraform](https://www.terraform.io) to provision AWS infrastructure. Terraform can be run from a [Docker](https://www.docker.com) container. [Hashicorp](https://www.hashicorp.com) produce a [Terraform container that is available on DockerHub](https://hub.docker.com/r/hashicorp/terraform/). To pull this image down use the following command: 
```
docker pull hashicorp/terraform:light
```
To run the container mount the current directory in the container and pass the container mount to the terraform command:
```
docker run --rm  -v $PWD:/data hashicorp/terraform:light plan /data
```
