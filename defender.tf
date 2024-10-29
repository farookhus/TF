
 resource "azurerm_resource_group" "sfsdefender" {
   name     = "sfsdefender"
   location = "East US"
 }

resource "azurerm_storage_account" "sfsdefender" {
  name                     = "sfsdefenderstorage"
  resource_group_name      = azurerm_resource_group.sfsdefender.name
  location                 = azurerm_resource_group.sfsdefender.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azapi_update_resource" "sfsdefender" {
  type = "Microsoft.Storage/storageAccounts@2021-09-01"
  resource_id = azurerm_storage_account.sfsdefender.id

  body = jsonencode({
    properties = {
      DnsEndpointType = "AzureDnsZone"
    }
  })
}


/* resource "azapi_resource" "sfsdefender" {
  type = "Microsoft.Security/defenderForStorageSettings@2022-12-01-preview"
  name = "sfsdefender"
  parent_id = "/subscriptions/a682efd9-27e6-4af8-9d10-574e2a214eab"
  body = {
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
  }
}
 */

/* resource "azurerm_security_center_storage_defender" "sfs_defender" {
  storage_account_id = azurerm_storage_account.sfs_defender.id
} */