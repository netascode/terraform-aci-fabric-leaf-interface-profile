terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  name = "LEAF101"
}

data "aci_rest" "fabricLePortP" {
  dn = "uni/fabric/leportp-${module.main.name}"

  depends_on = [module.main]
}

resource "test_assertions" "fabricLePortP" {
  component = "fabricLePortP"

  equal "name" {
    description = "name"
    got         = data.aci_rest.fabricLePortP.content.name
    want        = module.main.name
  }
}
