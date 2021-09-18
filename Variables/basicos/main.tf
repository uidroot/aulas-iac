variable "pais" {
    type = string
    default = "Brasil"
    description = "Seu pais"
}

variable "idade" {
    type = number
    default = 20
    description = "Sua idade"
}

variable "http_check" {
    type = bool
    default = true
    description = "Validar http"
}

variable "shape" {
    type = string
    default = "t2.micro"
}

output "shape" {
    value = var.shape
    description = "Seu shape instance"
}


output "pais" {
    value = var.pais
    description = "Seu pais"
}

output "idade" {
    value = var.idade
    description = "Sua idade"
}

output "http_check" {
    value = var.http_check
    description = "Checar ou nao"
}