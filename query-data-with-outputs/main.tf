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
  ami           = "ami-07191cf2912e097a6"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}