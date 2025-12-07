# Configure the AWS Provider
terraform {

  backend "s3" {
     bucket         = "terraformuser-backup-state"
     key            = "dev/terraform.tfstate"
     region         = "ap-south-2"
     use_lockfile   = true
     encrypt        = true
   }


  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "ap-south-2"
}

# backend configuration
# terraform {
#   backend "s3" {
#     bucket         = "erraform-state-1754513244"
#     key            = "dev/terraform.tfstate"
#     region         = "ca-central-1"
#     use_lockfile  = "true"
#     encrypt        = true
#   }
# }


# Simple test resource to verify remote backend
# resource "aws_s3_bucket" "test_backend" {
#   bucket = "test-remote-backend-${random_string.bucket_suffix.result}"

#   tags = {
#     Name        = "Test Backend Bucket"
#     Environment = "dev"
#   }
# }

# resource "random_string" "bucket_suffix" {
#   length  = 8
#   special = false
#   upper   = false
# }

# Create a S3 bucket
resource "aws_s3_bucket" "tf_test_rakesh_bucket" {
  bucket = "my-tf-test-rakesh-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}