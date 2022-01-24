variable "location" {
  type    = string
  default = "uksouth"
}

variable "app_service_name" {
  type    = string
  default = "example app service"
}

variable "rg_name" {
  type    = string
}

variable "plan_id" {
  type    = string
}


variable "default_tags" {
  type    = map(string)
  default = {
    "environment" = "dev"
    "source" = "terraform"
  }
}
