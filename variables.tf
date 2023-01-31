variable "ami-id"{
    type = string


}

# #########################################

variable "instance-type"{
    type = string


}
# #######################################




variable "subnets" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
    name = string
  }))

}



