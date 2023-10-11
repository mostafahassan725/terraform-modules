output "db_address" {
  value = aws_db_instance.this.address
}

output "db_endpoint" {
  value = aws_db_instance.this.endpoint
}


output "db_port" {
  value = aws_db_instance.this.port
}

output "db_az" {
  value = aws_db_instance.this.availability_zone
}
