resource "aws_vpc" "vpc" {
    cidr_block = "10.1.0.0/16"
    tags = {
      Name = "Supraja-VPC"
    }
  
}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.1.1.0/24"
    tags = {
      Name = "Supraja-Subnet"
    }
  
}