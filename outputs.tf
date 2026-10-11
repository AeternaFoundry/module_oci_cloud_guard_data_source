output "cloud_guard_data_sources_id" {
  description = "Map of id values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no id are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_guard_data_sources_compartment_id" {
  description = "Map of compartment_id values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no compartment_id are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "cloud_guard_data_sources_data_source_details" {
  description = "Map of data_source_details values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no data_source_details are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => one(v.data_source_details) if v.data_source_details != null && length(v.data_source_details) > 0 }
}
output "cloud_guard_data_sources_data_source_detector_mapping_info" {
  description = "Map of data_source_detector_mapping_info values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no data_source_detector_mapping_info are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.data_source_detector_mapping_info if v.data_source_detector_mapping_info != null && length(v.data_source_detector_mapping_info) > 0 }
}
output "cloud_guard_data_sources_data_source_feed_provider" {
  description = "Map of data_source_feed_provider values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no data_source_feed_provider are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.data_source_feed_provider if v.data_source_feed_provider != null && length(v.data_source_feed_provider) > 0 }
}
output "cloud_guard_data_sources_defined_tags" {
  description = "Map of defined_tags values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no defined_tags are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "cloud_guard_data_sources_display_name" {
  description = "Map of display_name values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no display_name are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "cloud_guard_data_sources_freeform_tags" {
  description = "Map of freeform_tags values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "cloud_guard_data_sources_region_status_detail" {
  description = "Map of region_status_detail values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no region_status_detail are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.region_status_detail if v.region_status_detail != null && length(v.region_status_detail) > 0 }
}
output "cloud_guard_data_sources_state" {
  description = "Map of state values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no state are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.state if v.state != null && length(v.state) > 0 }
}
output "cloud_guard_data_sources_status" {
  description = "Map of status values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no status are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.status if v.status != null && length(v.status) > 0 }
}
output "cloud_guard_data_sources_system_tags" {
  description = "Map of system_tags values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no system_tags are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "cloud_guard_data_sources_time_created" {
  description = "Map of time_created values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no time_created are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "cloud_guard_data_sources_time_updated" {
  description = "Map of time_updated values across all cloud_guard_data_sources, keyed the same as var.cloud_guard_data_sources except keys with no time_updated are omitted"
  value       = { for k, v in oci_cloud_guard_data_source.cloud_guard_data_sources : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

