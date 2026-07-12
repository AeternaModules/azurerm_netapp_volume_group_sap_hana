output "netapp_volume_group_sap_hanas_id" {
  description = "Map of id values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.id }
}
output "netapp_volume_group_sap_hanas_account_name" {
  description = "Map of account_name values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.account_name }
}
output "netapp_volume_group_sap_hanas_application_identifier" {
  description = "Map of application_identifier values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.application_identifier }
}
output "netapp_volume_group_sap_hanas_group_description" {
  description = "Map of group_description values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.group_description }
}
output "netapp_volume_group_sap_hanas_location" {
  description = "Map of location values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.location }
}
output "netapp_volume_group_sap_hanas_name" {
  description = "Map of name values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.name }
}
output "netapp_volume_group_sap_hanas_resource_group_name" {
  description = "Map of resource_group_name values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.resource_group_name }
}
output "netapp_volume_group_sap_hanas_volume" {
  description = "Map of volume values across all netapp_volume_group_sap_hanas, keyed the same as var.netapp_volume_group_sap_hanas"
  value       = { for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : k => v.volume }
}

