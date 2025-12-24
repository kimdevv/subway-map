resource "aws_vpc" "subway_map_vpc" {
  cidr_block = "192.168.0.0/24"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "subway-map-vpc"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.subway_map_vpc.id

  tags = {
    Name = "internet-gateway"
  }
}