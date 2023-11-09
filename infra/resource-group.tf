resource "azurerm_resource_group" "main" {
  name     = "rg-${local.org_name}-${local.app_name}-${local.env_name}"
  location = var.location
}