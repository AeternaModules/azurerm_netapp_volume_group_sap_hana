variable "netapp_volume_group_sap_hanas" {
  description = <<EOT
Map of netapp_volume_group_sap_hanas, attributes below
Required:
    - account_name
    - application_identifier
    - group_description
    - location
    - name
    - resource_group_name
    - volume (block):
        - capacity_pool_id (required)
        - data_protection_replication (optional, block):
            - endpoint_type (optional)
            - remote_volume_location (required)
            - remote_volume_resource_id (required)
            - replication_frequency (required)
        - data_protection_snapshot_policy (optional, block):
            - snapshot_policy_id (required)
        - export_policy_rule (required, block):
            - allowed_clients (required)
            - nfsv3_enabled (required)
            - nfsv41_enabled (required)
            - root_access_enabled (optional)
            - rule_index (required)
            - unix_read_only (optional)
            - unix_read_write (optional)
        - name (required)
        - protocols (required)
        - proximity_placement_group_id (optional)
        - security_style (required)
        - service_level (required)
        - snapshot_directory_visible (required)
        - storage_quota_in_gb (required)
        - subnet_id (required)
        - tags (optional)
        - throughput_in_mibps (required)
        - volume_path (required)
        - volume_spec_name (required)
EOT

  type = map(object({
    account_name           = string
    application_identifier = string
    group_description      = string
    location               = string
    name                   = string
    resource_group_name    = string
    volume = list(object({
      capacity_pool_id = string
      data_protection_replication = optional(object({
        endpoint_type             = optional(string, "dst")
        remote_volume_location    = string
        remote_volume_resource_id = string
        replication_frequency     = string
      }))
      data_protection_snapshot_policy = optional(object({
        snapshot_policy_id = string
      }))
      export_policy_rule = list(object({
        allowed_clients     = string
        nfsv3_enabled       = bool
        nfsv41_enabled      = bool
        root_access_enabled = optional(bool, true)
        rule_index          = number
        unix_read_only      = optional(bool, false)
        unix_read_write     = optional(bool, true)
      }))
      name                         = string
      protocols                    = list(string)
      proximity_placement_group_id = optional(string)
      security_style               = string
      service_level                = string
      snapshot_directory_visible   = bool
      storage_quota_in_gb          = number
      subnet_id                    = string
      tags                         = optional(map(string))
      throughput_in_mibps          = number
      volume_path                  = string
      volume_spec_name             = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.netapp_volume_group_sap_hanas : (
        length(v.volume) >= 2 && length(v.volume) <= 5
      )
    ])
    error_message = "Each volume list must contain between 2 and 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.netapp_volume_group_sap_hanas : (
        alltrue([for item in v.volume : (length(item.export_policy_rule) >= 1 && length(item.export_policy_rule) <= 5)])
      )
    ])
    error_message = "Each export_policy_rule list must contain between 1 and 5 items"
  }
}

