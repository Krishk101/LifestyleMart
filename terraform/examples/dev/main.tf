module "resource_group" {
  source   = "../../modules/resource_group"
  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location
}

module "app_service_plan" {
  source   = "../../modules/app_service_plan"
  for_each = var.app_service_plans

  name                = each.value.name
  resource_group_name = module.resource_group[each.value.resource_group_key].resource_group_name
  location            = module.resource_group[each.value.resource_group_key].resource_group_location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
  worker_count        = each.value.worker_count
}

module "linux_web_app" {
  source   = "../../modules/linux_web_app"
  for_each = var.linux_web_apps

  name                = each.value.name
  resource_group_name = module.resource_group[each.value.resource_group_key].resource_group_name
  location            = module.resource_group[each.value.resource_group_key].resource_group_location
  service_plan_id     = module.app_service_plan[each.value.app_service_plan_key].app_service_plan_id

  python_version   = each.value.python_version
  app_command_line = each.value.app_command_line
  app_settings     = each.value.app_settings
  tags             = each.value.tags
}