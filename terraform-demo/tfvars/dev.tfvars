######################################
#	General
######################################
tags = {
  "Environment"          = "Development",
  "Application"          = "Demo App",
  "Application Category" = "Business Applications",
  "Created By"           = "Terraform Demo"
}

######################################
#	Resource Group
######################################
demo_resource_group = {
  name                = "<RESOURCE_GROUP_NAME>"
  location            = "westeurope"
  existing            = true
}

######################################
#	Resources
######################################
