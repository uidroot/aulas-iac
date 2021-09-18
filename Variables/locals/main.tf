# Ou no arquivo locals.tf
# locals {
#   common_tags = {
#       "Owner" = "DevOps Team",
#       "Service" = "Frontend"
#   }
# }

variable "resource_tags" {
    type = map(string)
    default = {
      "Infra" = "Database"
      "Reliability Type" = "DBRE"
    }
}

# # 1 Exemplo ==========================
resource "aws_instance" "app-server" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t3.micro"
  tags = local.common_tags
}

resource "aws_instance" "db-server" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t3.micro"
  tags = merge(local.common_tags, var.resource_tags)
}


# 2 Exemplo ==========================

# variable "name" {
#   type = string
#   description = "Informe o nome dos recursos"
# }

# variable "name_default" {
#   type = string
#   default = "iac-instance-default"
# }

# locals {
#   name_prefix = "${var.name != "" ? var.name : var.name_default}"
# }

# output "local_var" {
#   value = local.name_prefix
# }

# 3 Exemplo ==========================
# variable "resource_tags" {
#     type = map(string)
#     default = {}
# }

# variable "project" {
# }

# locals {
#   required_tags = {
#       "project" = "iac",
#       "environment" = "prod"
#   }
#   tags = merge(var.resource_tags, local.required_tags)
# }

# output "tags" {
#   value = local.tags
# }

# locals {  
#     name_suffix = format("%s_%s", var.project, local.required_tags["environment"])
# }

# output "resource_name" {
#   value = local.name_suffix
# }