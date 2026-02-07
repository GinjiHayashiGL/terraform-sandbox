terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "terraform-user"
}

resource "aws_instance" "example" {
  ami           = "ami-0244ef75e95122fd9"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}
