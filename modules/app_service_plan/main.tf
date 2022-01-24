# Create app service plan
resource "azurerm_app_service_plan" "service-plan" {
  name = var.app_service_plan_name
  location = var.location
  resource_group_name = var.rg_name
  kind = "linux"
  reserved = true
  sku {
    tier = "Free"
    size = "F1"
    capacity = 1
  }
  tags = var.default_tags
}
