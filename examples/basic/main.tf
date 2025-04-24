locals {
  azure_region = "uksouth"
}

module "azure_theatre" {
  source = "../../"
}

output "regions" {
  value = keys(module.azure_theatre.azure_locations_to_theatres)
}
output "theatres" {
  value = values(module.azure_theatre.azure_locations_to_theatres)
}

output "threatre" {
  value = module.azure_theatre.azure_locations_to_theatres[local.azure_region]
}
