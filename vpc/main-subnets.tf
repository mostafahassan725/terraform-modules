resource "aws_subnet" "public" {
    count = length(var.public_subnets_cidr_blocks)
    
    vpc_id            = aws_vpc.this.id
    cidr_block        = var.public_subnets_cidr_blocks[count.index]
    availability_zone = var.azs[count.index]

    tags = merge({Name = "${var.tags.env}-public-${var.azs[count.index]}"}, 
            var.tags, 
            var.public_subnets_tags)
}

resource "aws_subnet" "private" {
    count = length(var.private_subnets_cidr_blocks)

    vpc_id            = aws_vpc.this.id
    cidr_block        = var.private_subnets_cidr_blocks[count.index]
    availability_zone = var.azs[count.index]
    
    tags = merge({Name = "${var.tags.env}-public-${var.azs[count.index]}"}, 
            var.tags, 
            var.public_subnets_tags)
}
