ami-id = "ami-0a606d8395a538502"
instance-type = "t2.micro"



subnets = {
  "subnetpublic" = {
    cidr_block        = "10.0.0.0/24"
    availability_zone = "us-east-2a"
    name = "publicsubnet"
  },

  "subnetprivate" = {
    cidr_block        = "10.0.1.0/24"
    availability_zone = "us-east-2b"
    name = "privatesubnet"
  }
  
}

