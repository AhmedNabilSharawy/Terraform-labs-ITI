# # First Availabilty zone
# # create Bastion Host
# resource "aws_instance" "Bastion-server-1" {
#   ami                         = data.aws_ami.my-ami.id
#   instance_type               = var.instance_type
#   subnet_id                   = module.my_network.public_subnet_1_id
#   vpc_security_group_ids      = [aws_security_group.Bastion-sg.id]
#   key_name                    = "n-virginia"
#   user_data                   = file("create-key.sh")
#   provisioner "local-exec" {
#     command = "echo ${self.public_ip} > bastion-1-ip.txt"
#   }
#   tags = {
#     Name = "Bastion-server-1"
#   }
# }

# # create private ec2
# resource "aws_instance" "private-server-1" {
#   ami                         = data.aws_ami.my-ami.id
#   instance_type               = var.instance_type
#   subnet_id                   = module.my_network.private_subnet_1_id
#   vpc_security_group_ids      = [aws_security_group.private-sg.id]
#   key_name                    = aws_key_pair.my-key.key_name

#   tags = {
#     Name = "private-server-1"
#   }
# }

# Second Availabilty zone
# create Bastion Host
# resource "aws_instance" "Bastion-server-2" {
#   ami                         = data.aws_ami.my-ami.id
#   instance_type               = var.instance_type
#   subnet_id                   = module.my_network.public_subnet_2_id
#   vpc_security_group_ids      = [aws_security_group.Bastion-sg.id]
#   key_name                    = "n-virginia"
#   user_data                   = file("user-data.sh")
#   provisioner "local-exec" {
#   command = "echo ${self.public_ip} > bastion-2-ip.txt"
#   }
#   tags = {
#     Name = "Bastion-server-2"
#   }
# }

# # create private ec2
# resource "aws_instance" "private-server-2" {
#   ami                         = data.aws_ami.my-ami.id
#   instance_type               = var.instance_type
#   subnet_id                   = module.my_network.private_subnet_2_id
#   vpc_security_group_ids      = [aws_security_group.private-sg.id]
#   key_name                    = aws_key_pair.my-key.key_name

#   tags = {
#     Name = "private-server-2"
#   }
# }
