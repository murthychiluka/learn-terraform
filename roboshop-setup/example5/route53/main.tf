resource "aws_route53_record" "record" {

  zone_id = "Z08295911TJBO1YG96BEC"
  name    = "${var.component}-dev.murthychiluka.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}




variable "private_ip" {}
variable "component" {}
