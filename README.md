# Azure Theatre

Azure Theatre is a Terraform module that maps Azure regions to their respective theatres of operation (EMEA, APAC, AMER). This module can be used to organize and manage Azure resources based on their geographical locations.

## Features

- Provides a mapping of Azure regions to their theatres of operation.
- Outputs lists of all Azure region names and theatre names.
- Allows querying of the theatre for a specific Azure region.

## Usage

### Example

Below is an example of how to use the `azure-theatre` module in your Terraform configuration:

```terraform
# filepath: [main.tf](http://_vscodecontentref_/0)
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

output "theatre" {
  value = module.azure_theatre.azure_locations_to_theatres[local.azure_region]
}
