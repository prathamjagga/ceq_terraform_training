resource "aws_s3_bucket" "S3" {
  bucket = var.bucket


  tags = var.tags
}
