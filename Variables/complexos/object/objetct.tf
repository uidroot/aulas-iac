variable "usuarios" {
    type = map(object({
            email = string
            departamento = string
        })
    )
    default = {
        "Vinicius": {
            email = "vincius@email.com",
            departamento = "Operacoes de TI"
        }
        "Joaozinho": {
            email = "joaozinho@email.com",
            departamento = "RH"
        }
    }
    description = "Usuarios"
}

output "usuarios" {
    value = var.usuarios
    description = "Usuarios Objects"
}

output "vinicius" {
    value = var.usuarios["Vinicius"]
}

output "vinicius_email" {
    value = var.usuarios["Vinicius"].email
}
