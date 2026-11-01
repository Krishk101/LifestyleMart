resource "azurerm_linux_web_app" "linux_web_app" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  https_only                = true
  client_affinity_enabled   = false
  ftp_publish_basic_authentication_enabled = false
  webdeploy_publish_basic_authentication_enabled = false

  app_settings = merge(var.app_settings, {
    SCM_DO_BUILD_DURING_DEPLOYMENT = "true"
  })

  identity {
    type = "SystemAssigned"
  }

  site_config {
    always_on         = true
    ftps_state        = "Disabled"
    app_command_line  = var.app_command_line

    application_stack {
      python_version = var.python_version
    }
  }

  tags = var.tags
}