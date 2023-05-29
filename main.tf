# ----------------------------------
# Terraform configuration
# ----------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

# ----------------------------------
# module
# ----------------------------------
module "test" {
  source = "./terraform/module/test"
}
