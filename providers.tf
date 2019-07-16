provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket         = "javahome-tf-1234567"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "javahome-tf"
  }
}
