variable "dadi" {
  default = [
   {
     course_name = "aws"
     trainer_name = "sudeep"
   },
   { 
    course_name = "devops"
    trainer_name" ="Anudeep"
   }

  ]
}

output "course_name" {
  value = var.dadi.*.course_name
}
