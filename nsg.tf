#Deploy Network Security Group
resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-vm-auladocker"
  resource_group_name = var.namerg
  location            = var.location



  security_rule {

    name                       = "ssh_port"
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "187.19.159.54"
    destination_address_prefix = "*"
  }
  tags = var.tags
}

#Deploy Network Security Group
resource "azurerm_network_security_group" "nsg0" {
  name                = "nsg-vm-auladocker"
  resource_group_name = var.namerg
  location            = var.location



  security_rule {

    name                       = "ssh_port"
    priority                   = 301
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "187.19.159.54"
    destination_address_prefix = "*"
  }
  tags = var.tags
}