# public subnet-1
resource "aws_subnet" "public-subnet-1" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = var.az_one
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.env}-public-subnet-1"
  }
}

# public subnet-1 association
resource "aws_route_table_association" "assoc-rtb-pub-1-subnet" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.my-public-rtb.id
}

# private subnet-1
resource "aws_subnet" "private-subnet-1" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.subnet_2_cidr
  map_public_ip_on_launch = false
  availability_zone = var.az_one
  tags = {
    Name = "${var.env}-private-subnet-1"
  }
}

# private subnet-1 association
resource "aws_route_table_association" "assoc-rtb-priv-1-subnet" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.my-private-rtb.id
}

# public subnet-2
resource "aws_subnet" "public-subnet-2" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.subnet_3_cidr
  availability_zone = var.az_two
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.env}-public-subnet-2"
  }
}

# public subnet association
resource "aws_route_table_association" "assoc-rtb-pub-2-subnet" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.my-public-rtb.id
}

# private subnet-2
resource "aws_subnet" "private-subnet-2" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.subnet_4_cidr
  availability_zone = var.az_two
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.env}-private-subnet-2"
  }
}

# private subnet-2 association
resource "aws_route_table_association" "assoc-rtb-priv-2-subnet" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.my-private-rtb.id
}