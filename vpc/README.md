# VPC Terraform module

## Description:

This Terraform module creates a VPC, public subnets, and private subnets. The VPC is configured with the specified CIDR block, DNS hostnames, and DNS support. The public and private subnets are also configured with the specified CIDR blocks and tags.

## Inputs:

vpc_cidr_block: The CIDR block for the VPC.
enable_dns_hostnames: Whether to enable DNS hostnames for instances in the VPC with public IP addresses.
enable_dns_support: Whether to enable DNS resolution through the Amazon provided DNS server.
public_subnets_cidr_blocks: A list of CIDR blocks for the public subnets.
private_subnets_cidr_blocks: A list of CIDR blocks for the private subnets.
azs: A list of availability zones in which to create the subnets.
public_subnets_tags: Additional tags for the public subnets.
private_subnets_tags: Additional tags for the private subnets.
tags: A map of tags for the VPC.

## Outputs:

vpc_id: The ID of the VPC.
public_subnets_ids: A list of IDs for the public subnets.
private_subnets_ids: A list of IDs for the private subnets.

## Requirements:

Terraform >= 1.0
AWS provider >= 5.0

## Usage:

To use this Terraform module, create a new Terraform configuration file and add the following code:

```
module "vpc" {
  source = "hashicorp/aws/vpc"

  vpc_cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

  public_subnets_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets_cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"]
  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

  public_subnets_tags = {
    Name = "Public subnets"
  }

  private_subnets_tags = {
    Name = "Private subnets"
  }
}
```
Then, run the following command to initialize Terraform and create the VPC and subnets:

```
terraform init
```
```
terraform plan
```
```
terraform apply
```
You can then access the VPC ID, public subnet IDs, and private subnet IDs from the module outputs:

```
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets_ids" {
  value = module.vpc.public_subnets_ids
}

output "private_subnets_ids" {
  value = module.vpc.private_subnets_ids
}
```
