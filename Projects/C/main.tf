module "ec2" {
    source = "git::https://github.com/uidroot/ec2-module?ref=development"
    instance_type = "t3.nano"
}

module "ec2" {
    source = "git::https://github.com/uidroot/ec2-module?ref=development"
    instance_type = "t3.micro"
}