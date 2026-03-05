terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"  # Terraform AWS provider version
    }
  }

  backend "s3" {
    bucket         = "akviklabs" # Replace with bucket name
    key            = "remote-state.tfstate" # Desired object path
    region         = "us-east-1" # Replace with AWS region
    encrypt        = true
    use_lockfile   = true 
  }
}

provider "aws" {
  region = "us-east-1"
}