provider "aws" {
  profile = var.profile
  region  = var.region
}

terraform {
  required_version = "1.1.3"

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket         = "s3-bucket-tfstate"
    dynamodb_table = "dynamodb-lock-table"
    encrypt        = "true"
    key            = "terraform.tfstate"
    profile        = "aws-profile"
    region         = "us-east-1"
  }
}
