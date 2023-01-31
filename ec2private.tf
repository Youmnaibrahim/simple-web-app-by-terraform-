
resource "aws_instance" "privateinstance" {
  ami                         = var.ami-id
  instance_type               = var.instance-type
  security_groups             = [aws_security_group.publicsecurity.id]
  key_name                    = "ohiokey"
  subnet_id                   = aws_subnet.subnet["subnetprivate"].id
  user_data                   = <<EOF
    #!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello world from $(hostname -f)<h1>" > /var/www/html/index.html
     EOF

  tags = {
    Name = "privateinstance"
  }
}















