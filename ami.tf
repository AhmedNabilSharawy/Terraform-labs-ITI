data "aws_ami" "my-ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-*-amd64-server-*"]
  }
}

/* # to see the result of choosen ami
output "my-ami-id" {
  value = data.aws_ami.my-ami
} */