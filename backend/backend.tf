provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "s3proj2491"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
