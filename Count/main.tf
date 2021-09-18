# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "instance-1" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t3.micro"
}

resource "aws_instance" "instance-2" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t3.micro"
}

# 1 ============= COUNT EXAMPLE ==============

# resource "aws_instance" "instance-2" {
#   ami           = "ami-0c2b8ca1dad447f8a"
#   instance_type = "t3.micro"
#   count = 5
# }


# 2 ============= COUNT INDEX EXAMPLE ==============

# resource "aws_instance" "instance-2" {
#   ami           = "ami-0c2b8ca1dad447f8a"
#   instance_type = "t3.micro"
#   count = 5
#   tags = {
#     Name = "Instance-${count.index}"
#   }
# }

# 3 =================== COUNT INDEX EM VARIAVEIS ===================

# variable "instances_names" {
#     type = list
#     default = ["dev-instance", "stage-instance", "prod-instance"]
# }

# resource "aws_instance" "instance-2" {
#   ami           = "ami-0c2b8ca1dad447f8a"
#   instance_type = "t3.micro"
#   count = 3
#   tags = {
#     Name = var.instances_names[count.index]
#   }
# }


