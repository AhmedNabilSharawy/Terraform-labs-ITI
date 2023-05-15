# public rtb
resource "aws_route_table" "my-public-rtb" {
  vpc_id = aws_vpc.my-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }
  tags = {
    Name = "${var.env}-public-rtb"
  }
}

# private rtb
resource "aws_route_table" "my-private-rtb" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "${var.env}-private-rtb"
  }
}

# route nat gateway
# resource "aws_route" "private_nat_route" {
#   route_table_id            = aws_route_table.my-private-rtb.id
#   destination_cidr_block    = "0.0.0.0/0"
#   nat_gateway_id            = aws_nat_gateway.my_nat_gateway.id
# }