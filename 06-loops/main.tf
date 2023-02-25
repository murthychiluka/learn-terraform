variable "d1" {
  default = 6
}

resource "null_resource" "nothing" {
count = var.d1

  }

  variable "d2" {
  default = [0,1,2,3,4,5]
}

resource "null_resource" "d2" {
  count = length(var.d2)
}


