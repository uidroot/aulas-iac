resource "aws_instance" "ec2" {
   ami = "ami-087c17d1fe0178315"
   instance_type = var.instance_type

   tags = {
        Name = "my-module-instance"
    }
}