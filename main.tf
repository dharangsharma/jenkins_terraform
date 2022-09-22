terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.27"
      }
    }
}

provider "aws" {
  profile = "default"  
  region = "ap-south-1"
}
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "mydemovpc"
  }
}