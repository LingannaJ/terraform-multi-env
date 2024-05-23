terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "multi-env-devops"
    key    = "workspace"
    region = "us-east-1"
    dynamodb_table = "multi-env-dev"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}