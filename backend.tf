terraform {
  backend "s3" {
    bucket  = "terraform-backend1103"
    key     = "terraform.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
  }
}
