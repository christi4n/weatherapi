variable "app_name" {
    type = string
    description = "Our app name"
}

variable "imagebuild" {
  type        = string
  description = "Latest Image Build"
}

variable resource_group_name {
    type = string
    description = "The name of resource group for containing resources"
}
variable resource_location {
    type = string
    description = "Azure location for hosting resources"
}