output "azure_locations_to_theatres" {
  value       = var.azure_locations_to_theatres
  description = "The map of region names to theatre."
}

output "region_names" {
  value       = keys(var.azure_locations_to_theatres)
  description = "List of all Azure region names."
}

output "theatre_names" {
  value       = values(var.azure_locations_to_theatres)
  description = "List of all Azure theatre names."
}
