terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.78.0"
    }
  }

  backend "s3" {
    bucket = "terraform-tf-state-buck"
    key    = "tfstate/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}
