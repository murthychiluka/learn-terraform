variable "bucket_names" {
  type    = list(string)
  default = ["sudeep", "aadvik", "ruchi"]
}

resource "aws_s3_bucket" "buckets" {
  #region   = "us-east-1"
  for_each = { for name in var.bucket_names : name => name }


  # acl = "private"
}


# resource "aws_s3_bucket" "buckets" {


#   for_each = var.bucket_names
#

#   bucket = each.value["bucket_names"]


# }


