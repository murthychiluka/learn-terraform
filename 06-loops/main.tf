variable "d1" {
  default = 6
}

resource "null_resource" "nothing" {
count = var.d1

  }

