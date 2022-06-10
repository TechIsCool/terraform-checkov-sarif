resource "aws_s3_bucket" "foo-example-bucket" {
  region        = "us-east-1"
  bucket        = "foo-example-23ti6036"
  force_destroy = true

  tags = {
    Name = "foo-example-123456789"
  }
  versioning {
    enabled = true
  }

  acl = "public"
}
