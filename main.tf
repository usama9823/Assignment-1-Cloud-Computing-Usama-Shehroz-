terraform {
  backend "s3" {
    bucket = "usamabucket"
    key    = "key/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  
  access_key = "AKIARGR5L63TU6KKEXWQ"
  secret_key = "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"
}
resource "aws_instance" "web" {
  ami           = "ami-09d56f8956ab235b3"
  instance_type = var.ec2typechanger

  tags = {
    Name = var.environment_name
  }
}

