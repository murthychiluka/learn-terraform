variable "buckets" {
type = list(string)
default = ["bucket1","bucket2","bucket3"]

}

resource "aws_s3_bucket" "mybucket" {
    count=3
    bucket = var.buckets[count.index]
    acl ="private"
}
