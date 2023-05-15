# create Bastion Host
resource "aws_instance" "Bastion-server-1" {
  ami                         = data.aws_ami.my-ami.id
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_1_id
  vpc_security_group_ids      = [aws_security_group.Bastion-sg.id]
  key_name                    = var.key_name
  tags = {
    Name = "Bastion-server-1"
  }
}

# create private ec2
resource "aws_instance" "private-server-1" {
  ami                         = data.aws_ami.my-ami.id
  instance_type               = var.instance_type
  subnet_id                   = var.private_subnet_1_id
  vpc_security_group_ids      = [aws_security_group.private-sg.id]
  key_name                    = var.key_name

  tags = {
    Name = "private-server-1"
  }
}


