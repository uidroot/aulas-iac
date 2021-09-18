resource "aws_instance" "foo" {
  ami           = "ami-0c2b8ca1dad447f8a" # us-east-1 (Virginia)
  instance_type = "t2.micro"
  
  tags = {
    Name = "webserver-iac"
  }
}

# Exemplo ===================== #

resource "aws_instance" "foo" {
  ami           = "ami-0c2b8ca1dad447f8a" # us-east-1 (Virginia)
  instance_type = lookup(var.instance_type,terraform.workspace)
  
  tags = {
    Name = "webserver-iac"
  }
}

variable "instance_type" {
  type = map

  default = {
    default = "t2.nano"
    dev = "t2.micro"
    prd = "t2.large"
  }
}

