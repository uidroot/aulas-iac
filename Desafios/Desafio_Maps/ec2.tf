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

resource "aws_instance" "foo" {
  ami           = var.AMI_instances["sa-east-1"] # us-east-1 (Virginia)
  instance_type = var.shapes_instances[1]
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

