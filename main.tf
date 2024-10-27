provider "aws" {}

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_internet_gateway" "igtw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "${var.env}-gtw"
  }
}

resource "aws_route_table" "rtb" {
  vpc_id = aws_vpc.vpc.id
  route {
    gateway_id = aws_internet_gateway.igtw.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name = "${var.env}-rtb"
  }
}


resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.nana-vpc.id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "${var.env}-subnet"
  }
}

resource "aws_route_table_association" "rtb-assoc" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.rtb.id
}

resource "aws_security_group" "sg" {
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allow_ssh_ip]
  }

  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.env}-sg"
  }
}
