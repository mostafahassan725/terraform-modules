# JENKINS Terraform module

## Description:

This Terraform module provisions an EC2 instance and a security group for running the Jenkins server on EC2. The EC2 instance is configured with the specified AMI, instance type, availability zone, subnet ID, and key pair name. The security group is configured with the specified VPC ID.

## Inputs:

- ami: The AMI of the EC2 instance.
- instance_type: The type of the EC2 instance.
- az: The availability zone to provision the instance in.
- subnet_id: The subnet ID for the instance to be provisioned in.
- key_name: The key pair name for the EC2 instance.
- vpc_id: The VPC where the security group will be in.
- tags: A map of tags for the EC2 instance and security group.

## Outputs:

- instance_state: The state of the EC2 instance.
- private_dns: The private DNS name of the EC2 instance.
- public_dns: The public DNS name of the EC2 instance.
- public_ip: The public IP address of the EC2 instance.

###User data:

The module uses the following user data to bootstrap Jenkins installation and start it on the EC2 instance:

```
#!/bin/bash

sudo yum update -y

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade -y

sudo dnf install java-11-amazon-corretto -y

sudo yum install jenkins -y

sudo systemctl enable jenkins

sudo systemctl start jenkins
```

## Usage:

To use this Terraform module, create a new Terraform configuration file and add the following code:

```
module "jenkins" {
  source = "github.com/mostafahassan725/terraform-modules//mgmt/jenkins?ref=jenkins-v0.0.2"

  ami = "ami-07823ef2a91f04b91"
  instance_type = "t2.micro"
  az = "us-east-1a"
  subnet_id = "subnet-12345678"
  key_name = "terraformkp"
  vpc_id = "vpc-12345678"

  tags = {
    Name = "My Jenkins server"
  }
}
```
Then, run the following command to initialize Terraform and provision the EC2 instance and security group:
```
terraform init
```
```
terraform plqn
```
```
terraform apply
```
You can then access the EC2 instance state, private DNS name, public DNS name, and public IP address from the module outputs:

```
output "instance_state" {
  value = module.jenkins.instance_state
}

output "private_dns" {
  value = module.jenkins.private_dns
}

output "public_dns" {
  value = module.jenkins.public_dns
}

output "public_ip" {
  value = module.jenkins.public_ip
}
```
Once the EC2 instance is provisioned and Jenkins is running, you can access the Jenkins web interface at the public DNS name or public IP address of the EC2 instance.

