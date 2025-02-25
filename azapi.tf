/*
resource "azapi_update_resource" "malwaresetting" {
   type        = "Microsoft.Insights/diagnosticSettings@2021-05-01-preview"
   resource_id = "/subscriptions/a682efd9-27e6-4af8-9d10-574e2a214eab/resourcegroups/test/providers/microsoft.storage/storageaccounts/cocgaga123/providers/microsoft.security/defenderforstoragesettings/current/providers/microsoft.insights/diagnosticSettings/service"

   body = {
    "properties": {
        "workspaceId": "/subscriptions/a682efd9-27e6-4af8-9d10-574e2a214eab/resourcegroups/test/providers/microsoft.operationalinsights/workspaces/storagewks",
        "logs": [
            {
                "category": "ScanResults",
                "enabled": true,
                "retentionPolicy": {
                    "enabled": true,
                    "days": 180
                }
            }
        ]
    }
}

 }
*/

resource "azapi_update_resource" "endpointprotection" {
   type        = "Microsoft.Security/settings@2022-05-01"
   resource_id = "/subscriptions/a682efd9-27e6-4af8-9d10-574e2a214eab/providers/Microsoft.Security/settings/WDATP"

   body = {
    "kind": "DataExportSettings",
    "properties": {
    "enabled": true
    }
 }
}
