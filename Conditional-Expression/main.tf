# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# 1 INICIO ===================
# resource "aws_instance" "dev" {
#   ami           = "ami-0c2b8ca1dad447f8a"
#   instance_type = "t2.micro"
# }

# resource "aws_instance" "prod" {
#   ami           = "ami-0c2b8ca1dad447f8a"
#   instance_type = "t3.medium"
# }

# 2 Validacao com tfvars configurado ============================

variable "istest" {
  type = bool
}

resource "aws_instance" "dev" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  count = var.istest == true ? 1 : 0
  # count = var.istest == true ? 3 : 0 (Podendo mudar o valor do count)
}

resource "aws_instance" "prod" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t3.medium"
  count = var.istest == false ? 1 : 0
}