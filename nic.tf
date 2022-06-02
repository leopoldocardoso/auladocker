# Deploy network interface vmsrvnginx
resource "azurerm_network_interface" "nic" {
  name                = "nic-vm-auladocker"
  resource_group_name = var.namerg
  location            = var.location
  ip_configuration {
    name                          = "nic-northcentralus-config"
    subnet_id                     = azurerm_subnet.snet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }

  tags = {
    Ambiente = "AulaDocker/Proevolua"
    Aluno    = "Leopoldo Cardoso"
  }

}