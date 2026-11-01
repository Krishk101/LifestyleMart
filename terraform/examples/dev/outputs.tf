output "resource_group_ids" {
  description = "Map of Resource Group IDs created for each environment"
  value       = { for key, resource_group in module.resource_group : key => resource_group.resource_group_id }
}

output "resource_group_names" {
  description = "Map of Resource Group names created for each environment"
  value       = { for key, resource_group in module.resource_group : key => resource_group.resource_group_name }
}

output "resource_group_locations" {
  description = "Map of Azure regions for the created Resource Groups"
  value       = { for key, resource_group in module.resource_group : key => resource_group.resource_group_location }
}

output "app_service_plan_ids" {
  description = "Map of App Service Plan IDs"
  value       = { for key, plan in module.app_service_plan : key => plan.app_service_plan_id }
}

output "app_service_plan_names" {
  description = "Map of App Service Plan names"
  value       = { for key, plan in module.app_service_plan : key => plan.app_service_plan_name }
}

output "app_service_plan_skus" {
  description = "Map of App Service Plan pricing SKUs"
  value       = { for key, plan in module.app_service_plan : key => plan.app_service_plan_sku }
}
output "linux_web_app_ids" {
  description = "Map of Linux Web App resource IDs"
  value = {
    for key, web_app in module.linux_web_app :
    key => web_app.linux_web_app_id
  }
}

output "linux_web_app_names" {
  description = "Map of Linux Web App names"
  value = {
    for key, web_app in module.linux_web_app :
    key => web_app.linux_web_app_name
  }
}

output "linux_web_app_hostnames" {
  description = "Map of Linux Web App default hostnames"
  value = {
    for key, web_app in module.linux_web_app :
    key => web_app.linux_web_app_default_hostname
  }
}

output "linux_web_app_urls" {
  description = "Map of HTTPS URLs for Linux Web Apps"
  value = {
    for key, web_app in module.linux_web_app :
    key => web_app.linux_web_app_url
  }
}

output "linux_web_app_identity_principal_ids" {
  description = "Map of system-assigned managed identity principal IDs"
  value = {
    for key, web_app in module.linux_web_app :
    key => web_app.linux_web_app_identity_principal_id
  }
}