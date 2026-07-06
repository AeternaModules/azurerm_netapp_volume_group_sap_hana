output "netapp_volume_group_sap_hanas" {
  description = "All netapp_volume_group_sap_hana resources"
  value       = azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas
}
output "netapp_volume_group_sap_hanas_account_name" {
  description = "List of account_name values across all netapp_volume_group_sap_hanas"
  value       = [for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : v.account_name]
}
output "netapp_volume_group_sap_hanas_application_identifier" {
  description = "List of application_identifier values across all netapp_volume_group_sap_hanas"
  value       = [for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : v.application_identifier]
}
output "netapp_volume_group_sap_hanas_group_description" {
  description = "List of group_description values across all netapp_volume_group_sap_hanas"
  value       = [for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : v.group_description]
}
output "netapp_volume_group_sap_hanas_location" {
  description = "List of location values across all netapp_volume_group_sap_hanas"
  value       = [for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : v.location]
}
output "netapp_volume_group_sap_hanas_name" {
  description = "List of name values across all netapp_volume_group_sap_hanas"
  value       = [for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : v.name]
}
output "netapp_volume_group_sap_hanas_resource_group_name" {
  description = "List of resource_group_name values across all netapp_volume_group_sap_hanas"
  value       = [for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : v.resource_group_name]
}
output "netapp_volume_group_sap_hanas_volume" {
  description = "List of volume values across all netapp_volume_group_sap_hanas"
  value       = [for k, v in azurerm_netapp_volume_group_sap_hana.netapp_volume_group_sap_hanas : v.volume]
}

