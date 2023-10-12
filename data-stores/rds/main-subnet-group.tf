resource "aws_db_subnet_group" "this" {
  name       = var.subnet_group_name
  description = "subnet group for rds"

  subnet_ids = var.subnet_ids

  tags = merge({Name = "${var.tags.env}-subnet-group"}, var.tags)
}