output "vpc_id" {
  value = aws_vpc.my-vpc.id
}

output "public_subnet_1_id" {
  value = aws_subnet.public-subnet-1.id
}


output "private_subnet_1_id" {
  value = aws_subnet.private-subnet-1.id
}

output "vpc_cidr_block" {
  value = aws_subnet.private-subnet-1.cidr_block
}

