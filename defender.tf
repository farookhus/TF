
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

resource "azapi_resource" "sfs_defender" {
  type = "Microsoft.Security/defenderForStorageSettings@2022-12-01-preview"
  name = "sfs_defender"
  parent_id = azurerm_storage_account.sfs_defender.id
  body = jsonencode({
    properties = {
      isEnabled = false
      malwareScanning = {
        onUpload = {
          capGBPerMonth = -1
          isEnabled = false
        }
        scanResultsEventGridTopicResourceId = "test"
      }
      overrideSubscriptionLevelSettings = false
      sensitiveDataDiscovery = {
        isEnabled = false
      }
    }
  })
}


/* resource "azurerm_security_center_storage_defender" "sfs_defender" {
  storage_account_id = azurerm_storage_account.sfs_defender.id
} */