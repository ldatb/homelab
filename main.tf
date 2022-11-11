terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.3.2"
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "cumulus-test" {
  ami = "ami-09a41e26df464c548"
  instance_type = "t2.large"
  key_name = "keypair-lucas-inspiron7572"
  tags = {
    Name = "Cumulus-test"
  }
}