resource "aws_dynamodb_table" "this" {
  name         = var.dynamodb_table_name
  billing_mode = var.billing_mode
  hash_key     = var.hash_key

  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  tags = {
    Name        = "${var.env}-dynamodb-table"
  }
}