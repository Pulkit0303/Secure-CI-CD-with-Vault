//Security Groups
resource "aws_security_group" "my_sg" {
  description = "Allow Jenkins, Vault, and SSH ports"

  ingress {
    description = "Allow Jenkins (8080)"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow Vault UI/API (8200)"
    from_port   = 8200
    to_port     = 8200
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
//EC2 Instance
resource "aws_instance" "ec2_inst" {
  ami           = var.my_ami
  instance_type = var.my_type
  user_data     = file("${path.module}/jenkins_vault.sh")
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  tags = {
    Name = var.my_name
  }
}
