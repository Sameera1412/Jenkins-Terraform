terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

terraform {
  required_version = ">=0.13"
}


provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "myec2" {
   ami = "ami-0f5daaa3a7fb3378b"
   instance_type = "t2.micro"
   key_name = "DevOps Keypair"
   tags = {
      Name = "Example"
   }

}
