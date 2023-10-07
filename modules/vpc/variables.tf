variable "public_subnets_cidr_blocks" {
  description = "create public subnets with this list of cidr blocks"
  type        = map(any)
  default = {
    "eu-west-3a" : "10.0.1.0/24",
    "eu-west-3b" : "10.0.3.0/24",
    "eu-west-3c" : "10.0.5.0/24",
  }
}

variable "private_subnets_cidr_blocks" {
  description = "create private subnets with this list of cidr blocks"
  type        = map(any)
  default = {
    "eu-west-3a" : "10.0.2.0/24",
    "eu-west-3b" : "10.0.4.0/24",
    "eu-west-3c" : "10.0.6.0/24",
  }
}

