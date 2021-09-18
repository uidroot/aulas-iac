resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "myec2" {
   ami = "ami-087c17d1fe0178315"
   instance_type = "t2.micro"
   key_name = "vockey"
   vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

   provisioner "remote-exec" {
     on_failure = continue
     inline = [
       "sudo yum -y install nano"
     ]
   }
   connection {
     type = "ssh"
     user = "vockey"
     private_key = file("./labsuser.pem")
     host = self.public_ip
   }
}