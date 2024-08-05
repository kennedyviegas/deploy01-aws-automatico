resource "aws_instance" "app_server" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  key_name = "devops"
  

  tags = {
    Name = "app_server"
  }
}