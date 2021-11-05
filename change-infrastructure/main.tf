terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "terraform-aws-get-started"
  region  = "ap-southeast-1"
}

resource "aws_instance" "test_server" {
  ami           = "ami-0d6ba217f554f6137"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform - Test Server 2"
  }
}