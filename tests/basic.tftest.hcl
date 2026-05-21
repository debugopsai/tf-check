# run "check_bucket_creation" {

#   command = plan

#   variables {
#     bucket_name = "my-test-bucket-123451"
#   }

#   assert {
#     condition     = aws_s3_bucket.demo.bucket == "my-test-bucket-123451"
#     error_message = "Bucket name does not match"
#   }
# }