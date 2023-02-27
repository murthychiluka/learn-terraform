resource "aws_instances" "test" {

ami = "ami-0a017d8ceb274537d"
instance_type = var.instances == "" ? "t2.micro" : var.instance_type

}

variable "instance_type" {}