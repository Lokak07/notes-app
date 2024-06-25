resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myown.id

  tags = {
    Name = "myown"
  }
}