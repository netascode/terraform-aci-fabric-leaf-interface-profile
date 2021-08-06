output "dn" {
  value       = aci_rest.fabricLePortP.id
  description = "Distinguished name of `fabricLePortP` object."
}

output "name" {
  value       = aci_rest.fabricLePortP.content.name
  description = "Leaf interface profile name."
}
