# Deploy VNET
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-proevolua"
  resource_group_name = var.namerg
  location            = var.location
  address_space       = ["10.1.0.0/16"]
  tags                = var.tags
}

# Deploy subnet
resource "azurerm_subnet" "snet" {
  name                 = "snet-proevolua"
  resource_group_name  = var.namerg
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.1.0.0/24"]
}
 