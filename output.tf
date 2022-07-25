output "rg" {
  value = azurerm_resource_group.rg.name
}

output "vm" {
  value = azurerm_linux_virtual_machine.vmauladocker.name
}

output "disk" {
    value=azurerm_managed_disk.data.name
}