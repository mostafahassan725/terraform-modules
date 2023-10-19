# VPC specific variables
variable "private_subnets_tags" { 
  description = "additional tags for private subnets (usually specific to EKS)"
  type = map(any)
}

# tags
variable "tags" {
  description = "map of tags for this resource"
  type = map(any)
}