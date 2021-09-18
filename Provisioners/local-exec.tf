resource "aws_instance" "myec2" {
   ami = "ami-087c17d1fe0178315"
   instance_type = "t2.micro"
   tags = { "Name" = "minha-ec2"}

   provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}