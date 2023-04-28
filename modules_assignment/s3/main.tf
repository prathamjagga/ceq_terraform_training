provider "aws" {
  region = "us-east-1"
}

variable "bucket" {
  type = string
}

variable "tags" {
  type = map(any)
}

resource "aws_s3_bucket" "S3" {
  bucket = var.bucket
  tags   = var.tags
}
