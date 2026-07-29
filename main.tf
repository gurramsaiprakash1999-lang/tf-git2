provider "aws" {
  region = var.region
}

resource "random_id" "bucket_suffixes" {
  for_each    = var.buckets
  byte_length = 4
}

# 2. This creates the buckets
resource "aws_s3_bucket" "my_buckets" {
  for_each = var.buckets

  # Accessing the specific random_id for the specific bucket using each.key
  bucket = "${each.value}-${random_id.bucket_suffixes[each.key].hex}"

  tags = {
    Name = each.key
  }
}
