  terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
  }

  provider "aws" {
    region = "us-east-1"
  }

  resource "aws_instance" "web" {
    ami            = "ami-0c15e602d3d6c6c4a"
    instance_type  = "t2.micro"
  }