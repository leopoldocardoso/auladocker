resource "azurerm_managed_disk" "example" {
  name                 = "acctestmd"
  location             = var.location
  resource_group_name  = var.namerg
  storage_account_type = "StandardSSD_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1" #Tamanho do disco

  tags = {
    environment = "staging"
  }
}