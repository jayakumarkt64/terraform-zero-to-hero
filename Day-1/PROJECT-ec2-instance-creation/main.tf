terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

# Create a VPC
resource "aws_instance" "example" {
  ami = "ami-0d2614eafc1b0e4d2"
  instance_type= "t2.micro"
  subnet_id= "subnet-01fca5be2131c0465"
  key_name= "terraform"

  tags={
   Name= "terraform"
}
}