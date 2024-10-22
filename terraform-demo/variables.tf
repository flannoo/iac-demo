######################################
# Global
######################################
variable "tags" {
  type        = map(string)
  description = "Tags that are added to each deployed resource for the demo app"
}

variable "demo_resource_group" {
  type = object({
    name          = string
    location      = string
    existing      = bool
  })
  description = "The resource group that will contain the app"
}
