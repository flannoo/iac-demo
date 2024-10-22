variable "location" {
  type        = string
  description = "location to create the resource group"
}

variable "name" {
  type        = string
  description = "name of the resource group"
}

variable "tags" {
  type        = map(string)
  description = "tags to add to the resource groups"
}

variable "existing" {
  type        = bool
  description = "Indicate if the resource group already exists. Default is false (backwards compatibility)"
  default     = false
}

locals {
  rg_name = replace(replace(var.name, "-rg", ""), "-", "")
}
