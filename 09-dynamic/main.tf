# #Using for_each function**
# variable "bucket_names" {
#   type    = list(string)
#   default = ["sudeep", "aadvik", "ruchi"]
# }

# resource "aws_s3_bucket" "buckets" {
#   #region   = "us-east-1"
#   for_each = { for name in var.bucket_names : name => name }


#   # acl = "private"
# }


#Using count function**

variable "bucket_names" {
  type    = list(string)
  default = ["prasmu", "sudsgasds", "ruchis"]
}

resource "aws_s3_bucket" "buckets" {
  count = length(var.bucket_names)

  bucket = var.bucket_names[count.index]
  #acl     = "private"
}

