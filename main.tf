resource "aci_rest" "fabricLePortP" {
  dn         = "uni/fabric/leportp-${var.name}"
  class_name = "fabricLePortP"
  content = {
    name = var.name
  }
}
