# ----------------------------------
# Terraform configuration
# ----------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">3.0"
    }
  }
}
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

# ----------------------------------
# module
# ----------------------------------
module "test" {
  source = "./terraform/module/test"
}
