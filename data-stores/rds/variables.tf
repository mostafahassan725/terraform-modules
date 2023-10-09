# general variables

variable "env" {
  description = "environment (dev, staging, prod, etc.)"
  type = string
}

# subnet group specific variables

variable "subnet_group_name" {
  description = "rds db subnet group name"
  type = string
}

variable "subnet_ids" {
  description = "subnet ids that are outputed after vpc and subnets creation in this module"
  type = list(string)
}

# rds specific variables

variable "allocated_storage" {
  description = "allocated storage for the db instance"
  type = number
  default = 10
}

variable "db_name" {
  description = "database name"
  type = string
}

variable "az" {
  description = "availability zone of the rds instance"
  type = string
}

variable "engine" {
  description = "database engine"
  type = string
}

variable "engine_version" {
  description = "database engine version"
  type = string
}

variable "instance_class" {
  description = "database instance class (db.t2.micro, etc.)"
  type = string
  default = "db.t2.micro"
}

variable "db_username" {
  description = "database master username"
  type = string
  sensitive = true
}

variable "db_password" {
  description = "database master paswword"
  type = string
  sensitive = true
}

variable "parameter_group_name" {
  description = "database parameter group name"
  type = string
}

variable "skip_final_snapshot" {
  description = "skip final snapshot"
  type = bool
  default = true
}
