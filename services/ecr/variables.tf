variable "env" {
  description = "environment (dev, staging, prod, etc.)"
  type = string
}

variable "ecr_name" {
  description = "registery name"
  type = string
}

variable "image_tag_mutability" {
  description = "image tag mutability (MUTABLE, IMMUTABLE)"
  type = string
  default = "MUTABLE"
}

variable "encryption_type" {
  description = "server side encryption type at rest (AES256, KMS)"
  type = string
  default = "AES256"
}

variable "scan_on_push" {
  description = "scan images on push"
  type = bool
  default = true
}
