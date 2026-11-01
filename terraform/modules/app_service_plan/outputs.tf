
output "app_service_plan_id" {
  description = "ID of the created App Service Plan"
  value       = azurerm_service_plan.app_service_plan.id
}

output "app_service_plan_name" {
  description = "Name of the created App Service Plan"
  value       = azurerm_service_plan.app_service_plan.name
}

output "app_service_plan_location" {
  description = "Azure region of the App Service Plan"
  value       = azurerm_service_plan.app_service_plan.location
}

output "app_service_plan_sku" {
  description = "Pricing SKU of the App Service Plan"
  value       = azurerm_service_plan.app_service_plan.sku_name
}
