//EC2 Instance
resource "aws_instance" "ec2_inst" {
  ami = var.my_ami
  instance_type = var.my_type
  key_name = ""
  tags = {
    Name = var.my_name
  }
}