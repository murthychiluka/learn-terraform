terraform {
   backend "s3" {
bucket = "terraform-murthy"
key = "25-s3-terraform.tfstate"
region = "us-east-1"

   } 
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0e05adc3a9fdbddf0"]
  tags = {
    Name = "test"
  }
}