# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance-1" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t3.micro"
}

# #Exemplo1
# resource "aws_instance" "instance-1" {
#   ami           = "ami-0c2b8ca1dad447f8a"
#   instance_type = var.list[0]
# }

# #Exemplo2
# resource "aws_instance" "instance-1" {
#   ami           = "ami-0c2b8ca1dad447f8a"
#   instance_type = var.types["sa-east-1"]
# }

variable "list" {
    type = list
    default = ["m5.large", "m5.xlarge", "t2.micro"]
}

variable "types" {
    type = map(string)
    default = { 
        "sa-east-1": "t2.nano",
        "us-east-1": "t3.micro",
        "ap-south-1": "t2.small"
    }
}


# output "list" {
#   value = var.list[0]
# }

# output "map" {
#   value = var.types["sa-east-1"]
