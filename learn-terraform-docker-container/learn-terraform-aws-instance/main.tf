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
  region = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0da7f840f6c348e2d"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name

  }

cloud {
    organization = "abdullah-terra-practice"
    workspaces {
        name = "learn-tfc-aws"
    }
}

required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
    }
}

}


