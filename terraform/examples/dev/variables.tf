
variable "subscription_id" {
  description = "Azure subscription ID used for deploying LifestyleMart infrastructure"
  type        = string
  sensitive   = true
}

variable "resource_groups" {
  description = "Map of resource groups to create for LifestyleMart environments"
  type = map(object({
    name     = string
    location = string
  }))
}

variable "app_service_plans" {
  description = "Map of App Service Plans and their deployment configurations"
  type = map(object({
    name               = string
    resource_group_key = string
    os_type            = string
    sku_name           = string
    worker_count       = number
  }))
}

variable "linux_web_apps" {
  description = "Map of Linux Web Apps and their deployment configurations"

  type = map(object({
    name                 = string
    resource_group_key   = string
    app_service_plan_key = string
    python_version       = string
    app_command_line     = string
    app_settings         = map(string)
    tags                 = map(string)
  }))
}