variable "location" {
  type    = string
  default = "uksouth"
}

variable "app_service_plan_name" {
  type    = string
  default = "example app service plan"
}

variable "rg_name" {
  type    = string
}


variable "default_tags" {
  type    = map(string)
  default = {
    "environment" = "dev"
    "soruce" = "terraform"
  }
}
