terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "ap-south-1"
}

# Create a S3 bucket
resource "aws_s3_bucket" "tf_test_rakesh_bucket" {
  bucket = "my-tf-test-rakesh-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}