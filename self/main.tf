resource "aws_instance" "example" {
  ami           = "ami-03fb284a84828c77a"
  instance_type = var.instance_type
}
