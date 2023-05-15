resource "aws_eip" "my_eip" {
  vpc      = true
  tags = {
    Name = "my_eip"
  }
}