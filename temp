{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0",
  "parameters": {
    "location": {
      "type": "string",
      "defaultValue": "westus2"
    },
    "vmName": {
      "type": "string",
      "defaultValue": "myVM"
    },
    "storageAccountName": {
      "type": "string",
      "defaultValue": "mystorageaccount"
    }
  },
  "variables": {
    "nicName": "[concat(parameters('vmName'), 'Nic')]"
  },
  "resources": [
    {
      "type": "Microsoft.Storage/storageAccounts",
      "name": "[parameters('storageAccountName')]",
      "apiVersion": "2021-08-01",
      "location": "[parameters('location')]",
      "sku": {
        "name": "Standard_LRS"
      },
      "kind": "StorageV2"
    },
    {
      "type": "Microsoft.Network/virtualNetworks",
      "name": "myVNet",
      "apiVersion": "2023-02-01",
      "location": "[parameters('location')]",
      "properties": {
        "addressSpace": {
          "addressPrefixes": ["10.0.0.0/16"]
        }
      }
    },
    {
      "type": "Microsoft.Network/networkInterfaces",
      "name": "[variables('nicName')]",
      "apiVersion": "2023-02-01",
      "location": "[parameters('location')]",
      "properties": {
        "virtualNetwork": {
          "id": "[resourceId('Microsoft.Network/virtualNetworks', 'myVNet')]"
        }
      },
      "dependsOn": [
        "myVNet"
      ]
    },
    {
      "type": "Microsoft.Compute/virtualMachines",
      "name": "[parameters('vmName')]",
      "apiVersion": "2023-03-01",
      "location": "[parameters('location')]",
      "properties": {
        "storageProfile": {
          "imageReference": {
            "publisher": "Canonical",
            "offer": "UbuntuServer",
            "sku": "latest",
            "version": "latest"
          },
          "osDisk": {
            "name": "myOSDisk",
            "managedDisk": {
              "storageAccountType": "Standard_LRS"
            }
          }
        },
        "hardwareProfile": {
          "vmSize": "Standard_B2s"
        },
        "networkProfile": {
          "networkInterfaces": [
            {
              "id": "[resourceId('Microsoft.Network/networkInterfaces', variables('nicName'))]"
            }
          ]
        }
      },
      "dependsOn": [
        "myVNet",
        "[variables('nicName')]"
      ]
    }
  ]
}