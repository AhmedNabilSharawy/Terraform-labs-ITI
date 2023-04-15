resource "aws_security_group" "private-sg" {
  name   = "private-sg"
  vpc_id = module.my_network.vpc_id

  ingress {
    cidr_blocks = [var.vpc_cidr_block]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
  ingress {
    cidr_blocks = [var.vpc_cidr_block]
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.enviroment}-private-sg"
  }
}

resource "aws_security_group" "Bastion-sg" {
  name   = "Bastion-sg"
  vpc_id = module.my_network.vpc_id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.enviroment}-Bastion-sg"
  }
}
