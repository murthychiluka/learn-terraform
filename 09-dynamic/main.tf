# variable "bucket_names" {
#   type    = list(string)
#   default = ["bucket1", "bucket2", "bucket3"]
# }

# resource "aws_s3_bucket" "buckets" {
#     region = "us-east-1"
#   for_each = { for name in var.bucket_names : name => name }


#   acl    = "private"
# }


resource "aws_s3_bucket" "buckets" {
  region = "us-east-1"

  for_each = var.buckets

  bucket_names = each.value["bucket_names"]
  acl          = "private"

}
