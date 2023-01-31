resource "aws_route_table" "publicroutetable" {
  vpc_id = aws_vpc.mynewvpc.id

  tags = {
    Name = "publicroutetable"
  }
}



# #############################

resource "aws_route" "public_route" {
    route_table_id = aws_route_table.publicroutetable.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id

}

# ########################################################

resource "aws_route_table_association" "publicassociate" {
  subnet_id      = aws_subnet.subnet["subnetpublic"].id
  route_table_id = aws_route_table.publicroutetable.id
}