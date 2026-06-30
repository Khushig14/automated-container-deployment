terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                   = "eu-west-1"
  shared_config_files      = []
  shared_credentials_files = []
}

resource "aws_instance" "my_project_server" {
  ami = "ami-0c1c30571d2dae5c9"  
  instance_type = "t3.micro"             
  key_name = "Cloud-Infrastructure-Key"
  tags = {
    Name = "Terraform-Ubuntu-Server"
  }
}
