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
  ami           = "ami-01dd271720c1ba44f"
  instance_type = "t1.micro"

  tags = {
    Name = "My Test Server"
  }
}
