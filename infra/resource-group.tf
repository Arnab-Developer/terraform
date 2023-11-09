resource "azurerm_resource_group" "main" {
  name     = "rg-${local.org_name}-${local.app_name}-${terraform.workspace}"
  location = var.location
}