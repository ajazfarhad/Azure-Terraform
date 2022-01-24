terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 1.1.0"
}

# Remote state

# terraform {
#   backend "azurerm" {
#     resource_group_name  = "example-dev-rg"
#     storage_account_name = "examplestorageacct"
#     container_name       = "tfstate-container"
#     key                  = "dev.terraform.tfstate"
#   }
# }


resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags = var.default_tags
}

module "app_service_plan" {
  source = "../modules/app_service_plan"
  rg_name = azurerm_resource_group.rg.name
}

module "app_service" {
  source = "../modules/app_service"
  rg_name = azurerm_resource_group.rg.name
  plan_id = module.app_service_plan.app_service_plan_id
}

module "storage_account" {
  source = "../modules/storage_account"
  rg_name = azurerm_resource_group.rg.name
}
