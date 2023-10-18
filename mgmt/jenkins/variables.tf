# VPC specific variables
variable "vpc_cidr_block" {
  description = "vpc cidr block (10.0.0.0/16, 172.31.0.0/16, 192.168.0.0/20, etc.)"
  type = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  description = "determines whether the VPC supports assigning public DNS hostnames to instances with public IP addresses"
  type = bool
  default = false
}

variable "enable_dns_support" {
  description = "determines whether the VPC supports DNS resolution through the Amazon provided DNS server"
  type = bool
  default = true
}

# subnets specific variables
variable "public_subnets_cidr_blocks" {
  description = "create public subnets with this list of cidr blocks"
  type = list(string)
}

variable "private_subnets_cidr_blocks" {
  description = "create private subnets with this list of cidr blocks"
  type = list(string)
}

variable "azs" {
  description = "create subnets in this list of availability zones"
  type = list(string)
}

variable "public_subnets_tags" { 
  description = "additional tags for public subnets (usually specific to EKS)"
  type = map(any)
}

variable "private_subnets_tags" { 
  description = "additional tags for private subnets (usually specific to EKS)"
  type = map(any)
}

# tags
variable "tags" {
  description = "map of tags for this resource"
  type = map(any)
}