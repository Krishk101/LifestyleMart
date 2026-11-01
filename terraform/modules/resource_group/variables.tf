
variable "name" {
  description = "Name of the Azure Resource Group"
  type        = string

  validation {
    condition     = length(var.name) >= 1 && length(var.name) <= 90
    error_message = "Resource Group name must contain between 1 and 90 characters."
  }
}

variable "location" {
  description = "Azure region where the Resource Group will be created"
  type        = string
}
