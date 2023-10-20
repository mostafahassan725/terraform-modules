# ec2 specific variables
variable "ami" {
  description = "ec2 instance ami"
  type = string
  default = "ami-07823ef2a91f04b91"
}

variable "instance_type" {
  description = "ec2 instance type"
  type = string
  default = "t2.micro"
}

variable "az" {
  description = "availability zone to provision the instance in"
  type = string
}

variable "subnet_id" {
  description = "subnet id for the instance to be provisioned in"
  type = string
}

variable "key_name" {
  description = "key pair name for this ec2 instance"
  type = string
  default = "terraformkp"
}

# security groups specific variables
variable "vpc_id" {
  description = "vpc where security group will be in"
  type = string
}

# tags
variable "tags" {
  description = "map of tags for this resource"
  type = map(any)
}