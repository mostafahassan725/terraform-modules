variable "env" {
  description = "environment (dev, staging, prod, etc.)"
  type = string
}

variable "dynamodb_table_name" {
  description = "dynamodb table name that is region-unique"
  type = string
}

variable "billing_mode" {
  description = "dynamodb billing mode"
  type = string
  default = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "dynamodb hash key"
  type = string
  default = "LockID"
}

variable "hash_key_type" {
  description = "dynamodb hash key type (S for string, N for number, etc.)"
  type = string
  default = "S"
}