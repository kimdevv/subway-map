resource "aws_subnet" "public_subnet_a" {
  vpc_id = aws_vpc.subway_map_vpc.id
  availability_zone = "ap-northeast-2a"
  cidr_block = "192.168.0.0/26"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-a"
  }
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id = aws_vpc.subway_map_vpc.id
  availability_zone = "ap-northeast-2c"
  cidr_block = "192.168.0.64/26"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-c"
  }
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id = aws_vpc.subway_map_vpc.id
  availability_zone = "ap-northeast-2a"
  cidr_block = "192.168.0.128/27"

  tags = {
    Name = "private-subnet-a"
  }
}

resource "aws_subnet" "private_subnet_c" {
  vpc_id = aws_vpc.subway_map_vpc.id
  availability_zone = "ap-northeast-2c"
  cidr_block = "192.168.0.160/27"

  tags = {
    Name = "private-subnet-a"
  }
}
