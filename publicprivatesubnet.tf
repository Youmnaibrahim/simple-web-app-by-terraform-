
resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.mynewvpc.id
  for_each          = var.subnets
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone 



  tags = {
    "name" = each.value.name
    
    }
}

