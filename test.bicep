param storageName string
param locationName string = resourceGroup().location

resource storeaz400mitchel 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageName
  location: locationName
  sku: {
    name: 'Standard_ZRS'
  }
  kind: 'StorageV2'
}
