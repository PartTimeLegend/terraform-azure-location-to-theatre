locals {
  # Create a map with both formatted and lowercase versions (no spaces) of region names
  normalized_regions_map = merge(
    var.azure_locations_to_theatres,
    # Create entries with lowercase, no-space versions of region names
    {
      for region, theatre in var.azure_locations_to_theatres :
      replace(lower(region), " ", "") => theatre
    }
  )
}
