
resource "aws_instance" "web" {
  ami                                  = "ami-0a1179631ec8933d7"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1e"
 instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "testkey"
  monitoring                           = false
  security_groups                      = ["launch-wizard-2"]
  subnet_id                            = "subnet-024be4a8d9bb515fc"
  tags = {
    Name = "webserver"
  }
  
  }
  
  
  