output "bucket_name" {
  value = aws_s3_bucket.this.id
}

output "bucket_region" {
  value = aws_s3_bucket.this.region
}

output "bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
}