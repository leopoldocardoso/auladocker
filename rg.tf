# Deploy RG
resource "azurerm_resource_group" "rg" {
  name     = "rg-proevolua"
  location = var.location
  tags     = var.tags

}