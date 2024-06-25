resource "aws_subnet" "public0" {
  vpc_id            = aws_vpc.myown.id
  cidr_block        = "10.1.0.0/24" // Adjust as needed
  availability_zone = "ap-south-1a" // Specify availability zone

  tags = {
    Name = "public-subnet-01"
  }
}

resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.myown.id
  cidr_block        = "10.1.1.0/24" // Adjust as needed
  availability_zone = "ap-south-1b" // Specify availability zone

  tags = {
    Name = "public-subnet-02"
  }
}

resource "aws_subnet" "private0" {
  vpc_id            = aws_vpc.myown.id
  cidr_block        = "10.1.2.0/24" // Adjust as needed
  availability_zone = "ap-south-1a" // Specify availability zone

  tags = {
    Name = "private-subnet-01"
  }
}

resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.myown.id
  cidr_block        = "10.1.3.0/24" // Adjust as needed
  availability_zone = "ap-south-1b" // Specify availability zone

  tags = {
    Name = "private-subnet-02"
  }
}


