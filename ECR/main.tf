terraform {
  backend "s3" {
    bucket = "s3proj2491"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "devopsthehardway-ecr-repo" {
  name                 = var.repo_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}