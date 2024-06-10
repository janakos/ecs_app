terraform {

  backend "s3" {
    bucket = "tf-statefile-provable-game"
    key    = "game"
    region = "us-east-2"
  }

  required_version = "~> 1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
