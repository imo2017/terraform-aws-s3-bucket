terraform {
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region  = s3_region
}
resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = s3_acl
}
resource "aws_s3_bucket" "my_bucket" {
  bucket = s3_bucket_name
}