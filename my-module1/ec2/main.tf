

resource "aws_instance" "my-instance" {
  ami           = "ami-03fb284a84828c77a"
  instance_type = var.instance_type
}

variable "instance_type" {}