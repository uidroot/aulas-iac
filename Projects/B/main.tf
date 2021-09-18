module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "ec2-instance-registry"
  ami                    = "ami-087c17d1fe0178315"
  instance_type          = "t2.micro"

  tags = {
    Name   = "ec2-instance-registry"
    Environment = "Dev"
  }
}