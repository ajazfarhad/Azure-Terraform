variable "location" {
  type    = string
  default = "uksouth"
}

variable "resource_group_name" {
  type    = string
  default = "example-dev-rg"
}
variable "default_tags" {
  type    = map(string)
  default = {
    "environment" = "dev"
    "source" = "terraform"
  }
}
