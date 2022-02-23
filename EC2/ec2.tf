# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#EC2 instance creation
resource "aws_instance" "ec2-server" {
  ami           = "ami-033b95fb8079dc481"
  instance_type = "t2.micro"
  key_name      = "aws-key"

  tags = {
    Name = "Terraform-Server"
  }
}
