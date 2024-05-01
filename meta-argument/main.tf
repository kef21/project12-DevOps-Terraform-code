terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}
/*
resource "aws_iam_group" "gp1" {
    name = "manager"
    lifecycle {
      prevent_destroy = false
      
    }
}


resource "aws_iam_user" "usr1" {
    name = "eric21"
    depends_on = [ aws_iam_group.gp1 ]
  }
*/

resource "aws_instance" "server1" {
  ami = "ami-0a1179631ec8933d7"
  instance_type = "t3.small"
  key_name = "testkey"
  
}