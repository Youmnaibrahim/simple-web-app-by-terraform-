
# ################################################

#  route table for private subnet

resource "aws_route_table" "privateroutetable" {
  vpc_id = aws_vpc.mynewvpc.id

  tags = {
    Name = "privateroutetable"
  }
}

resource "aws_route" "private-route" {
  route_table_id = aws_route_table.privateroutetable.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.natgatway.id

}
# ########################################################

# # association with  private subnet and private route table

resource "aws_route_table_association" "privateassociate" {
  subnet_id      = aws_subnet.subnet["subnetprivate"].id
  route_table_id = aws_route_table.privateroutetable.id
}