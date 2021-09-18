
variable "senha" {
    type = string
    sensitive = true
    description = "Sua senha"
}


output "senha" {
    value = var.senha
    sensitive = true
    description = "Sua senha"
}