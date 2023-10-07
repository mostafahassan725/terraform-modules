resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_internet_gateway" "my_igw" {
  tags = {
    Name = "my-igw"
  }
}

resource "aws_internet_gateway_attachment" "igw_vpc_attach" {
  internet_gateway_id = aws_internet_gateway.my_igw.id
  vpc_id              = aws_vpc.my_vpc.id
}

resource "aws_subnet" "public_subnets" {
  vpc_id            = aws_vpc.my_vpc.id
  for_each          = var.public_subnets_cidr_blocks
  cidr_block        = each.value
  availability_zone = each.key
  tags = {
    Name = "my-public-subnet-${substr(each.key, 9, 1)}"
  }
}

resource "aws_subnet" "private_subnets" {
  vpc_id            = aws_vpc.my_vpc.id
  for_each          = var.private_subnets_cidr_blocks
  cidr_block        = each.value
  availability_zone = each.key
  tags = {
    Name = "my-private-subnet-${substr(each.key, 9, 1)}"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.my_igw.id
}

resource "aws_route_table_association" "public_route_table_associate" {
  for_each       = aws_subnet.private_subnets
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public_route_table.id
}