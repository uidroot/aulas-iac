
variable "image_id" {
    type = string
    description = "ID da Amazon Image"

    validation {
      condition = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
      error_message = "O valor da image_id nao e valido, tem que comecar com \"ami-\"."
    }
}


output "image_id" {
    value = var.image_id
    description = "Image ID"
}