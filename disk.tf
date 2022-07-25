resource "azurerm_managed_disk" "data" {
  name                 = "data"
  location             = var.location
  resource_group_name  = var.namerg
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1" #Tamanho do disco
  tags = var.tags
}