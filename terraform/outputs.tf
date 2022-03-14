output resource_group_details {
    value = azurerm_resource_group.tfrg
    sensitive = true
}
output container_group_details {
    value = azurerm_container_group.tfcg
    sensitive = true
}