# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

variable "projeto" {
  type = string
  description = "Informe o projeto referente a essa infraestrutura"
  
  validation {
      condition = substr(var.projeto, 0, 4) == "prj-"
      error_message = "O valor do projeto nao e valido. Deve iniciar com o nome projeto-* ."
    }
}

variable "ambiente" {
  type = string
}

resource "aws_instance" "dev" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  count = var.ambiente == "dev" ? 2 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t3.medium"
  count = var.ambiente == "prod" ? 4 : 0
}

output "Ambiente" {
    value = var.ambiente
}