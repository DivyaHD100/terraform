provider "aws" {
  region = "us-east-1"
}

# Block to create EC2
resource "aws_instance" "web" {
  ami                       = "ami-0d627f07755afa83c"
  instance_type             = "t3.micro"
  #vpc_security_group_ids    = [aws_security_group.allow_ssh_sg.id]

  tags = {
    Name        = "Terraform-Instance-Server-Name"
  }
}

# # Block to print the attribute 
# output "private_dns_of_server" {
#     value       = aws_instance.web.private_dns
# }