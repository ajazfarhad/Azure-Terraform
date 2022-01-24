variable "account_name" {
  type    = string
  default = "exampledevstorageacct"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "tier" {
  type = string
  default = "Standard"
}

variable "replication_type" {
  type = string
  default = "LRS"
}

variable "blob_public_access" {
  default = true
}

variable "minimum_tls_version" {
  type = string
  default = "TLS1_2"
}

variable "rg_name" {
  type    = string
}

variable "default_tags" {
  type    = map(string)
  default = {
    "environment" = "dev"
    "source" = "terraform"
  }
}
