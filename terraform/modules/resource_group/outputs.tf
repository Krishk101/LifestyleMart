
output "resource_group_id" {
  description = "ID of the created Azure Resource Group"
  value       = azurerm_resource_group.resource_group.id
}

output "resource_group_name" {
  description = "Name of the created Azure Resource Group"
  value       = azurerm_resource_group.resource_group.name
}

output "resource_group_location" {
  description = "Azure region of the created Resource Group"
  value       = azurerm_resource_group.resource_group.location
}
