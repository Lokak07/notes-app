resource "aws_ebs_volume" "myown-storage" {
  availability_zone = "ap-south-1a"
  size              = 30

  tags = {
    Name = "HelloWorld"
  }
}

