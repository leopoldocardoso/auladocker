#deploy public ip vmauladocker
resource "azurerm_public_ip" "pip" {
  name                = "pip-vm-auladocker"
  resource_group_name = var.namerg
  location            = var.location
  allocation_method   = "Dynamic"
  tags                = var.tags
}

#deploy public ip vmauladocker01
resource "azurerm_public_ip" "pip01" {
  name                = "pip-vm01-auladocker-01"
  resource_group_name = var.namerg
  location            = var.location
  allocation_method   = "Dynamic"
  tags                = var.tags
}