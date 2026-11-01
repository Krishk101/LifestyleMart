
variable "name" {
  description = "Name of the Azure App Service Plan"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region for the App Service Plan"
  type        = string
}

variable "os_type" {
  description = "Operating system type for the App Service Plan"
  type        = string

  validation {
    condition     = contains(["Linux", "Windows"], var.os_type)
    error_message = "OS type must be Linux or Windows."
  }
}

variable "sku_name" {
  description = "Pricing SKU for the App Service Plan"
  type        = string
}

variable "worker_count" {
  description = "Number of workers allocated to the App Service Plan"
  type        = number
  default     = 1
}
