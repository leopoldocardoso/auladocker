resource "azurerm_dev_test_global_vm_shutdown_schedule" "shutdownvmdocker" {
  virtual_machine_id    = azurerm_linux_virtual_machine.vmauladocker.id
  location              = var.location
  enabled               = true
  daily_recurrence_time = "0000"
  timezone              = var.timezone
  notification_settings {
    enabled = false
  }
}
