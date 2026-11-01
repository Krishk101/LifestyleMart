
variable "name" {
  description = "Globally unique name of the Linux Web App"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region for the Linux Web App"
  type        = string
}

variable "service_plan_id" {
  description = "Resource ID of the existing App Service Plan"
  type        = string
}

variable "python_version" {
  description = "Python runtime version for the Linux Web App"
  type        = string
  default     = "3.11"
}

variable "app_settings" {
  description = "Application settings configured for the Linux Web App"
  type        = map(string)
  default     = {}
}

variable "app_command_line" {
  description = "Startup command used to launch the Flask application"
  type        = string
}

variable "tags" {
  description = "Tags assigned to the Linux Web App"
  type        = map(string)
  default     = {}
}
