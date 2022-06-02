#deploy public ip vmsrvnginx
resource "azurerm_public_ip" "pip" {
  name                = "pip-vm-auladocker"
  resource_group_name = var.namerg
  location            = var.location
  allocation_method   = "Dynamic"
  tags                = var.tags
}