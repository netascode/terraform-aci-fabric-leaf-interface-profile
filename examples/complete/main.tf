module "aci_fabric_leaf_interface_profile" {
  source  = "netascode/fabric-leaf-interface-profile/aci"
  version = ">= 0.0.1"

  name = "LEAF101"
}
