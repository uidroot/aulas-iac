terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}

variable "shape" {
    type = string
    default = "t2.small"
    description = "O shape da sua instancia"
}

resource "aws_instance" "foo" {
  ami           = "ami-0c2b8ca1dad447f8a" # us-east-1 (Virginia)
  instance_type = "t2.medium"
  tags = {
    Name = "webserver-iac"
  }
}



output "ip_instancia" {
    value = aws_instance.foo.public_ip
    description = "Ip publico da sua instancia"
}

output "dns_instancia" {
    value = aws_instance.foo.public_dns
    description = "DNS publico da sua instancia"
}

