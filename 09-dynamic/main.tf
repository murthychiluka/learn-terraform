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
  default = ["back1", "back2", "back3"]
}

resource "aws_s3_bucket" "buckets" {
  count = length(var.bucket_names)
  #region  = "us-east-1"
  bucket = var.bucket_names[count.index]
  #acl     = "private"
}

