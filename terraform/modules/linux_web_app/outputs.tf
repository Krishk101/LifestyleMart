output "linux_web_app_id" {
  description = "Resource ID of the Linux Web App"
  value       = azurerm_linux_web_app.linux_web_app.id
}

output "linux_web_app_name" {
  description = "Name of the Linux Web App"
  value       = azurerm_linux_web_app.linux_web_app.name
}

output "linux_web_app_default_hostname" {
  description = "Default hostname of the Linux Web App"
  value       = azurerm_linux_web_app.linux_web_app.default_hostname
}

output "linux_web_app_url" {
  description = "HTTPS URL of the Linux Web App"
  value       = "https://${azurerm_linux_web_app.linux_web_app.default_hostname}"
}

output "linux_web_app_identity_principal_id" {
  description = "Principal ID of the system-assigned managed identity"
  value       = azurerm_linux_web_app.linux_web_app.identity[0].principal_id
}