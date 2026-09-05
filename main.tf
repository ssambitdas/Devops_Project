resource "azurerm_resource_group" "rg_sambit1" {
  name     = "rg-sambit1"
  location = "centralindia"
}

resource "azurerm_resource_group" "rg_sambit2" {
  name     = "rg-sambit2"
  location = "centralindia"
}
resource "azurerm_storage_account" "storage_sambit" {
  name                     = "storagesambit"
  resource_group_name      = azurerm_resource_group.rg_sambit.name
  location                 = azurerm_resource_group.rg_sambit.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container_sambit" {
  name                  = "sambit-container"
  storage_account_id    = azurerm_storage_account.storage_sambit.id
  container_access_type = "private"
}

