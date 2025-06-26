provider "aws" {
  region = "us-east-2"
}
module "ec2_instance" {
  source = "./Infrastructure"
  my_ami = "ami-0d1b5a8c13042c939"
  my_name = "Vault"
  my_type = "t2.micro"
}