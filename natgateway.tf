
# natgateway 

resource "aws_nat_gateway" "natgatway" {
  allocation_id = aws_eip.eipfornatgateway.id
  subnet_id     = aws_subnet.subnet["subnetpublic"].id

  tags = {
    Name = "natgatway"
  }

}



#################################################################

# elastic ip for nat gatway

resource "aws_eip" "eipfornatgateway" {
  vpc = true

}


###########################################################

