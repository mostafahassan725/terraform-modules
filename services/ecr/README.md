# ECR Terraform module

## Description:

This Terraform module creates an ECR repository. The repository is configured with the specified name, image tag mutability, encryption type, scan on push, and tags.

## Inputs:

ecr_name: The name of the ECR repository.
image_tag_mutability: The image tag mutability. Can be either MUTABLE or IMMUTABLE.
encryption_type: The server side encryption type at rest. Can be either AES256 or KMS.
scan_on_push: Whether to scan images on push.
tags: A map of tags for the ECR repository.

## Outputs:

ecr_arn: The ARN of the ECR repository.
ecr_id: The ID of the ECR repository.
ecr_url: The URL of the ECR repository.

## Requirements:

Terraform >= 1.0
AWS provider >= 5.0

## Usage:

To use this Terraform module, create a new Terraform configuration file and add the following code:

```
module "ecr" {
  source = "hashicorp/aws/ecr"

  ecr_name = "my-ecr-repository"
  image_tag_mutability = "MUTABLE"
  encryption_type = "AES256"
  scan_on_push = true

  tags = {
    Name = "My ECR repository"
  }
}
```
Then, run the following command to initialize Terraform and create the ECR repository:
```
terraform init
```
```
terraform plan
```
```
terraform apply
```
You can then access the ECR ARN, ID, and URL from the module outputs:

```
output "ecr_arn" {
  value = module.ecr.ecr_arn
}

output "ecr_id" {
  value = module.ecr.ecr_id
}

output "ecr_url" {
  value = module.ecr.ecr_url
}
```
