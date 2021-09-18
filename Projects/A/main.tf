module "ec2module" {
    source = "../../Modulos/ec2"
    instance_type = var.instance_type
}