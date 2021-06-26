variable "bucketprefix" {
  description="Prefix for your s3 bucket"
}

resource "aws_s3_bucket" "mybucket" {
    bucket = "${var.bucketprefix}-tf-test-bucket"
    acl = "private"
}

output "mys3arn" {
  value = aws_s3_bucket.mybucket.arn
}

output "mys3id" {
  value = aws_s3_bucket.mybucket.id
}