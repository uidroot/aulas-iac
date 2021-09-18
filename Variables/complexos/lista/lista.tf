variable "times" {
    type = list(string)
    default = [ 
        "Corinthians",
        "Palmeiras",
        "Santos",
        "Sao Paulo" 
    ]
    description = "Times Paulistas"
}

output "Times_Paulistas" {
    value = var.times
    description = "Times"
}

output "Times_Paulistas_Ultimo" {
    value = var.times[length(var.times) - 1]
    description = "Times"
}

