variable "bucket_name" {
  description = "the globally unique bucket name"
  type = string
}

variable "bucket_prevent_destroy" {
  description = "a terraform attribute to prevent destroy (comment if deletion is needed)"
  type = bool
  default = true
}

variable "bucket_versioning" {
  description = "bucket versioning status (Enabled or Disabled)"
  type = string
  default = "Enabled"
}

variable "bucket_sse_algorithm" {
  description = "server side encryption algorithm"
  type = string
  default = "AES256"
}

variable "bucket_block_public_acls" {
  description = "block public acls"
  type = bool
  default = true
}

variable "bucket_block_public_policy" {
  description = "block public policy"
  type = bool
  default = true
}

variable "bucket_ignore_public_acls" {
  description = "ignore public acls"
  type = bool
  default = true
}

variable "bucket_restrict_public_buckets" {
  description = "restrict public buckets"
  type = bool
  default = true
}

variable "tags" {
  description = "map of tags for this resource"
  type = map(string)
}