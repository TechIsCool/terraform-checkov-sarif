resource "aws_s3_bucket" "foo-bucket" {
  region        = "us-east-1"
  bucket        = "foo-bucket-23ti6036"
  force_destroy = true

  tags = {
    Name = "foo-123456789"
  }
  versioning {
    enabled = true
  }
  acl = "public"
}
