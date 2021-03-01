terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "3.7"
      }
  }
}

provider "aws" {
    region = "ap-southeast-2"  
}

module "webserver" {
    source = "./modules/ec2"

    servername = "csterraformdemo"
    size = "t3.micro"
  
}