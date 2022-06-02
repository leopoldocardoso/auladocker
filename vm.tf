resource "azurerm_linux_virtual_machine" "vmauladocker" {
  name                            = "vmauladocker"
  resource_group_name             = var.namerg
  location                        = var.location
  size                            = "Standard_B2ms"
  disable_password_authentication = false
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  network_interface_ids           = [azurerm_network_interface.nic.id]
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"

  }
  os_disk {
    name                 = "osdisk-vmsrvnginx"
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"

  }
  tags = var.tags
}