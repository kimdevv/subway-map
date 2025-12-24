resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.subway_map_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route_table_association" "public_subnet_a_assoc" {
  subnet_id = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet_c_assoc" {
  subnet_id = aws_subnet.public_subnet_c.id
  route_table_id = aws_route_table.public_route_table.id
}