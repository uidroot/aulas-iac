# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

variable "prefix_name" {
  type = string
  description = "Informe um prefixo para seus recursos."
}
# resource "random_pet" "name" {}

resource "aws_security_group" "web-sg" {
  name = "${var.prefix_name}-sg"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
      Name = "${var.prefix_name}-sg"
    }
}

resource "aws_instance" "web" {
  ami                    = "ami-0c2b8ca1dad447f8a"
  instance_type          = "t2.micro"
  user_data              = file("init-script.sh")
  vpc_security_group_ids = [aws_security_group.web-sg.name]

  tags = {
    Name = "${var.prefix_name}-ec2"
  }
}




# output "arn_instance" {
#     value = aws_instance.minha_ec2_desafio.arn
#     description = "ARN da instância"
# }

# output "public_dns" {
#     value = aws_instance.minha_ec2_desafio.public_dns
#     description = "DNS da instância"
# }

# output "public_ip" {
#     value = aws_instance.minha_ec2_desafio.public_ip
#     description = "Ip Publico da instância"
# }