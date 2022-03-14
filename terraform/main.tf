terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.97.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Required resources
resource "azurerm_resource_group" "tfrg" {
    name = var.resource_group_name
    location = var.resource_location
}

resource "azurerm_container_group" "tfcg" {
    name = "${var.app_name}"
    location = azurerm_resource_group.tfrg.location
    resource_group_name = azurerm_resource_group.tfrg.name

    ip_address_type  = "public"
    dns_name_label = "chrisnt5wa"
    os_type = "Linux"

    container {
      name = var.app_name
      image = "chrisnt5/weatherapi:${var.imagebuild}"
        cpu = "1"
        memory = "1"

        ports {
            port = 80
            protocol = "TCP"
        }
    }
}