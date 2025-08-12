output "azure_locations_to_theatres" {
  value       = local.normalized_regions_map
  description = "The map of region names to theatre, supporting both standard format and lowercase with no spaces."
}

output "region_names" {
  value       = keys(var.azure_locations_to_theatres)
  description = "List of all Azure region names in standard format."
}

output "theatre_names" {
  value       = values(var.azure_locations_to_theatres)
  description = "List of all Azure theatre names."
}

output "normalized_region_names" {
  value       = keys(local.normalized_regions_map)
  description = "List of all Azure region names in both standard format and normalized format (lowercase, no spaces)."
}
