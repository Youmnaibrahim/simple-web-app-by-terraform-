resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.mynewvpc.id

  tags = {
    Name = "gw"
  }
}