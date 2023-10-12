resource "aws_internet_gateway" "this" {
  
  tags = merge({Name = "${var.tags.dev}-igw"}, var.tags)
}

resource "aws_internet_gateway_attachment" "this" {

  internet_gateway_id = aws_internet_gateway.this.id
  vpc_id              = aws_vpc.this.id
}