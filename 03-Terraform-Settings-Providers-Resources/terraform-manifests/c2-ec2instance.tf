# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = "ami-09b1e8fc6368b8a3a"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}