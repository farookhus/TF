
 resource "azurerm_resource_group" "sfs_defender" {
   name     = "sfs_defender"
   location = "East US"
 }

resource "azurerm_storage_account" "sfs_defender" {
  name                     = "sfsdefenderstorage"
  resource_group_name      = azurerm_resource_group.sfs_defender.name
  location                 = azurerm_resource_group.sfs_defender.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azapi_resource" "sfsdefender" {
  type = "Microsoft.Security/defenderForStorageSettings@2022-12-01-preview"
  name = "sfs_defender"
  body = jsonencode({
    properties = {
      isEnabled = true
      malwareScanning = {
        onUpload = {
          capGBPerMonth = -1
          isEnabled = true
        }
        scanResultsEventGridTopicResourceId = "test"
      }
      overrideSubscriptionLevelSettings = true
      sensitiveDataDiscovery = {
        isEnabled = true
      }
    }
  })
}