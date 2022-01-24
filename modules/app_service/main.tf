# Create app service
resource "azurerm_app_service" "app-service" {
  name = var.app_service_name
  location = var.location
  resource_group_name = var.rg_name
  app_service_plan_id = var.plan_id

site_config {
    linux_fx_version = "RUBY|2.7"
  }
tags = var.default_tags
}
