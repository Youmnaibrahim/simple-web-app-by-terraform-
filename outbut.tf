output "ec2-public-ip" {
    value = aws_instance.publicinstance.public_ip
  
}

output "ec2-private-ip" {
    value = aws_instance.privateinstance.private_ip
  
}