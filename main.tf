provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "intro" {
  ami                    = "ami-06b09bfacae1453cb"
  instance_type          = "t2.micro"
  key_name               = "MyKeyPair"
  vpc_security_group_ids = [ "sg-0d0e14d654d6fe2d0" ]
 
 tags = {
    Name = "testserv"
    project = "tomcat"
  }
}