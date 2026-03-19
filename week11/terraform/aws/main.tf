provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_s3_bucket" "cloud_storage" {
  bucket = "intern-multicloud-demo-leon-2026"
}
