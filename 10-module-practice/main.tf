module "ec2" {
  for_each      = var.instances
  source        = "./test"
  component     = each.value["name"]
  instance_type = each.value["type"]
  sg_id         = module.sg.sg_id
}

module "sg" {
  source = "./test1"
}


variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t2.micro"
    }
    user = {
      name = "user"
      type = "t2.micro"
    }
  }
}
