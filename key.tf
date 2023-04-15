resource "tls_private_key" "tls-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "my-key" {
  key_name   = var.key_pair_name
  public_key = tls_private_key.tls-key.public_key_openssh
}

# store private key pair into my machine to use it with ssh connect 
resource "local_file" "tf-key" {
  content  = tls_private_key.tls-key.private_key_pem
  filename = "private-key.pem"
}

# output "private_key" {
#   value     = tls_private_key.tls-key.private_key_pem 
#   sensitive = true
# }

# terraform output -raw private_key >mykey.pem
# scp mykey.pem ubuntu@44.201.168.93:~/.ssh/

