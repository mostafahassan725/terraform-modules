resource "aws_db_instance" "this" {
  allocated_storage    = var.allocated_storage #10
  db_name              = var.db_name 
  availability_zone    = var.az
  db_subnet_group_name = aws_db_subnet_group.this.id
  engine               = var.engine #"mysql"
  engine_version       = var.engine_version #"5.7"
  instance_class       = var.instance_class #"db.t2.micro" or "db.t3.micro"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.parameter_group_name #"default.mysql5.7"
  skip_final_snapshot  = var.skip_final_snapshot #true

  tags = {
    Name = "${var.env}-db"
  }
}