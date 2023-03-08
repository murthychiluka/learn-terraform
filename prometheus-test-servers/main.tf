
resource "aws_spot_instance_request" "node1" {
  ami           = "ami-03fb284a84828c77a"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0e05adc3a9fdbddf0"]
  wait_for_fulfillment = true
  tags = {
    Name = "Prom-node1"
  }
}

resource "aws_ec2_tag" "node1" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "Prometheus-node1"
}

resource "aws_spot_instance_request" "node2" {
  ami           = "ami-03fb284a84828c77a"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0e05adc3a9fdbddf0"]
  wait_for_fulfillment = true
  tags = {
    Name = "Prom-node2"
  }
}


resource "aws_ec2_tag" "node2" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "Prometheus-node2"
}