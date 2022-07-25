# Deploy RG
resource "azurerm_resource_group" "rg" {
  name     = var.namerg
  location = var.location
  tags     = var.tags

}