resource "azurerm_storage_account" "storage-account" {
  name                     = var.account_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.tier
  account_replication_type = var.replication_type
  allow_blob_public_access = var.blob_public_access
  min_tls_version          = var.minimum_tls_version
  tags = var.default_tags
}
