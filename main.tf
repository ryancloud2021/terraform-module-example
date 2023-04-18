provider "aws" {
  region = var.region
}


resource "aws_s3_bucket" "mybucket" {
  bucket = var.name
}

resource "aws_s3_bucket_acl" "myBucket" {
  bucket = aws_s3_bucket.mybucket.id
  acl = var.acl
}