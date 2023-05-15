# resource "aws_nat_gateway" "my_nat_gateway" {
# #   allocation_id = 
#   subnet_id     = aws_subnet.public-subnet-1.id

#   tags = {
#     Name = "my_nat_gateway",
#   }
#     depends_on = [aws_internet_gateway.my-igw]

# }