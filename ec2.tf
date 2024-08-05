resource "aws_instance" "app_server" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  key_name = "devops"
  #security_groups = [ "allow_ssh","allow_http","allow_egress" ]
  security_groups = [aws_security_group.example.name]


  tags = {
    Name = "app_server"
  }
}