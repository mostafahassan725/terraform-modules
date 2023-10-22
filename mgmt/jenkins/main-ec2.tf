resource "aws_instance" "this_jenkins" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone = var.az
  subnet_id = var.subnet_id
  vpc_security_group_ids = [ aws_security_group.jenkins_sg.id ]
  key_name        = var.key_name

  user_data = file("install-jenkins.sh")

  tags = merge({Name = "${var.tags.env}-jenkins-instance"}, var.tags)
}
