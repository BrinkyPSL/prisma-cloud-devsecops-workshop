provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "e17edcf8-e5a5-4fa4-bb5a-86440adf3faa"
    git_commit           = "ca3ea6e505ab5c05cdc63b838a32681e2e448016"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-14 22:41:47"
    git_last_modified_by = "40739569+BrinkyPSL@users.noreply.github.com"
    git_modifiers        = "40739569+BrinkyPSL"
    git_org              = "BrinkyPSL"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
