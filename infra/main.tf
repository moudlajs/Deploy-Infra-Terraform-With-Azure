# Create a resource group
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

# Create storage account
# Tam kde je .name/location to vyuziva ako property z hore definovej RG, like a object
resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  static_website {
    index_document = var.index_document
  }
}

# Add a idnex.html file
# web lebo to je nejaky webcontainer pre staticku stranku
resource "azurerm_storage_blob" "blob" {
  name                   = var.index_document
  storage_account_name   = var.storage_account_name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = var.source_content
}