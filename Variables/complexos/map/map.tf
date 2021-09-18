variable "instance_type_region" {
    type = map(string)
    default = { 
        "sa-east": "t2.micro",
        "us-east": "t3.micro" 
    }
    description = "EC2 Types"
}

output "regions_instance_map" {
    value = var.instance_type_region
    description = "Instances Types"
}
