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
  region  = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-********"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
