# terraform block

terraform {
  required_version = "~> 1.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47"
    }
  }
}
provider "aws" {
  region = "us-east-2"
}

