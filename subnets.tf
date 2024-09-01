resource "aws_subnet" "public_subnet" {

    vpc_id = aws_vpc.app_vpc.id
    cidr_block = var.public_subnet_cidr
    map_customer_owned_ip_on_launch = true
}

resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.app_vpc.id
    cidr_block = var.private_subnet_cidr
  
}
