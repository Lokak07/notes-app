# Create a public route table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.myown.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "public-route-table"
  }
}

# Associate the public route table with the public subnets
resource "aws_route_table_association" "public0" {
  subnet_id      = aws_subnet.public0.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public.id
}

# Create a private route table (no need for a default route to the internet)
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.myown.id

  tags = {
    Name = "private-route-table"
  }
}

# Associate the private route table with the private subnets
resource "aws_route_table_association" "private0" {
  subnet_id      = aws_subnet.private0.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private.id
}
