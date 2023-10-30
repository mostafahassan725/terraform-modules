#Project Overview
This repository contains Terraform modules for provisioning and managing various AWS resources. The modules are organized into folders based on the type of resource:

vpc: VPC modules
data-sources: RDS modules
services: ECR and EKS modules
##Usage
To use a module, simply copy it into your Terraform project and reference it in your Terraform configuration. For example, to use the VPC module, you would add the following code to your Terraform configuration:

```
module "vpc" {
  source = "github.com/mostafahassan725/terraform-modules//vpc?ref=vpc-v0.0.8"
  name = "my-vpc"
  cidr = "10.0.0.0/16"
}
```
The module will then provision the necessary AWS resources based on the parameters you have provided.

##Module Documentation
Each module has its own documentation file, which can be found in the module's folder. The documentation file provides information on how to use the module, as well as the parameters that can be configured.

##Requirements
Terraform 1.1+
License
This repository is licensed under the MIT License.

##Examples
Here are some examples of how to use the modules in this repository:

VPC:
Create a VPC with two subnets:
```
module "vpc" {
  source = "github.com/mostafahassan725/terraform-modules//vpc?ref=vpc-v0.0.8"
  name = "my-vpc"
  cidr = "10.0.0.0/16"
  subnets = ["10.0.1.0/24", "10.0.2.0/24"]
}
```

RDS:
Create an RDS instance for MySQL:
```
module "rds" {
  source = "github.com/mostafahassan725/terraform-modules//data-stores/rds?ref=rds-v0.0.3"
  name = "my-rds-instance"
  engine = "mysql"
  engine_version = "5.7"
  allocated_storage = 20
  instance_class = "db.t2.micro"
}
```

ECR:
Create an ECR repository for storing Docker images:
```
module "ecr" {
  source = "github.com/mostafahassan725/terraform-modules//services/ecr?ref=ecr-v0.0.3"
  name = "my-ecr-repository"
}
```


