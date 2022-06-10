

















// Comments to bring this down farther
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

  logging {
    target_bucket = "foo-bucket-logging"
    target_prefix = "log/"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "arn:blah:vlah:blah:a52190125"
        sse_algorithm     = "aws:kms"
      }
    }
  }
  acl = "public"
}
