provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "myec22" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
}