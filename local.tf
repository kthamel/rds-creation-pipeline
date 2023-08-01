terraform {
  backend "s3" {
    bucket = "kthamel-s3-tfstate"
    key    = "kthamel-postgres"
    region = "us-east-1"
  }
}