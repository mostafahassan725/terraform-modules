# Terraform modules
Modules of different AWS services

## File Structure
.
├── data-stores
│   ├── dynamodb
│   │   ├── dependencies.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   │   └── versions.tf
│   └── rds
│       ├── dependencies.tf
│       ├── main-rds.tf
│       ├── main-subnet-group.tf
│       ├── outputs.tf
│       ├── variables.tf
│       └── versions.tf
├── global
│   └── s3
│       ├── dependencies.tf
│       ├── main.tf
│       ├── outputs.tf
│       ├── variables.tf
│       └── versions.tf
├── LICENSE
├── mgmt
├── services
│   ├── ecr
│   │   ├── dependencies.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   │   └── versions.tf
│   ├── ecs
│   └── eks
└── vpc
    ├── dependencies.tf
    ├── main-igw.tf
    ├── main-routes.tf
    ├── main-subnets.tf
    ├── main-vpc.tf
    ├── outputs.tf
    ├── variables.tf
    └── versions.tf
