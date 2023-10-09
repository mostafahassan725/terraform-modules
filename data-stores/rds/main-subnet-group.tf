resource "aws_db_subnet_group" "this" {
  name       = var.subnet_group_name
  description = "subnet group specific to resources in this modules repo"

  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.env}-subnet-group"
  }
}