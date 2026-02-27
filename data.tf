data "aws_vpc" "testvpc" {
  id = "vpc-0f6dad4a8bafa1a99"
}

resource "aws_subnet" "testsubnet-1" {
  vpc_id = data.aws_vpc.testvpc.id
  cidr_block = "10.1.100.0/24"
  availability_zone = "us-east-1f"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "Storage-subnet-3"
  }
}
