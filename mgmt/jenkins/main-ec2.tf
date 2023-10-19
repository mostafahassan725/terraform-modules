resource "aws_instance" "this_jenkins" {
  ami                    = "ami-051f7e7f6c2f40dc1"
  instance_type          = "t2.micro"
  key_name        = "terraformkp"
  vpc_security_group_ids = [ aws_security_group.myjenkins_sg.id ]
  user_data = file("install-jenkins.sh")
  tags = {
    Name = "jenkins-ec2"
  }
}