output "instance_state" {
  value = aws_instance.this_jenkins.instance_state
}

output "private_dns" {
  value = aws_instance.this_jenkins.private_dns
}

output "public_dns" {
  value = aws_instance.this_jenkins.public_dns
}

output "public_ip" {
  value = aws_instance.this_jenkins.public_ip
}