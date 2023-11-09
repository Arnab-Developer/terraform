resource "azurerm_storage_account" "example" {
  name                     = "sa${local.org_name}${local.app_name}${terraform.workspace}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_type
}