terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "my-test-server" {
  ami           = "ami-0b9fd8b55a6e3c9d5"
  instance_type = "t1.micro"

  tags = {
    Name = "My Test Server"
  }
}
