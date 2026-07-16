output "netapp_volume_group_sap_hanas_id" {
  description = "Map of id values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "netapp_volume_group_sap_hanas_account_name" {
  description = "Map of account_name values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "netapp_volume_group_sap_hanas_application_identifier" {
  description = "Map of application_identifier values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.application_identifier if v.application_identifier != null && length(v.application_identifier) > 0 }
}
output "netapp_volume_group_sap_hanas_group_description" {
  description = "Map of group_description values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.group_description if v.group_description != null && length(v.group_description) > 0 }
}
output "netapp_volume_group_sap_hanas_location" {
  description = "Map of location values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.location if v.location != null && length(v.location) > 0 }
}
output "netapp_volume_group_sap_hanas_name" {
  description = "Map of name values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.name if v.name != null && length(v.name) > 0 }
}
output "netapp_volume_group_sap_hanas_resource_group_name" {
  description = "Map of resource_group_name values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "netapp_volume_group_sap_hanas_volume" {
  description = "Map of volume values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.volume if v.volume != null && length(v.volume) > 0 }
}

