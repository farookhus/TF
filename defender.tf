
 resource "azurerm_resource_group" "sfs_defender" {
   name     = "sfs_defender"
   location = "East US"
 }

resource "azurerm_storage_account" "sfs_defender" {
  name                     = "sfs_defenderstorageaccount"
  resource_group_name      = azurerm_resource_group.sfs_defender.name
  location                 = azurerm_resource_group.sfs_defender.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
/* resource "azapi_resource_action" "enable_defender_for_Storage" {
  type        = "Microsoft.Security/defenderForStorageSettings@2022-12-01-preview"
  resource_id = "${azurerm_storage_account.sfs_defender.id}/providers/Microsoft.Security/defenderForStorageSettings/current"
  method      = "PUT"

  body = jsonencode({
    properties = {
      isEnabled = true
      malwareScanning = {
        onUpload = {
          isEnabled     = true
          capGBPerMonth = 5000
        }
      }
      sensitiveDataDiscovery = {
        isEnabled = true
      }
      overrideSubscriptionLevelSettings = true
    }
  })
} */