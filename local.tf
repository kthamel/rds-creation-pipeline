terraform {
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  backend "s3" {
    bucket = "kthamel-s3-tfstate"
    key    = "kthamel-postgres"
    region = "us-east-1"
  }
}