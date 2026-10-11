resource "oci_cloud_guard_data_source" "cloud_guard_data_sources" {
  for_each = var.cloud_guard_data_sources

  compartment_id            = each.value.compartment_id
  data_source_feed_provider = each.value.data_source_feed_provider
  display_name              = each.value.display_name
  defined_tags              = each.value.defined_tags
  freeform_tags             = each.value.freeform_tags
  status                    = each.value.status

  dynamic "data_source_details" {
    for_each = each.value.data_source_details != null ? [each.value.data_source_details] : []
    content {
      additional_entities_count = data_source_details.value.additional_entities_count
      data_source_feed_provider = data_source_details.value.data_source_feed_provider
      description               = data_source_details.value.description
      interval_in_minutes       = data_source_details.value.interval_in_minutes
      interval_in_seconds       = data_source_details.value.interval_in_seconds
      dynamic "logging_query_details" {
        for_each = data_source_details.value.logging_query_details != null ? [data_source_details.value.logging_query_details] : []
        content {
          key_entities_count = logging_query_details.value.key_entities_count
          logging_query_type = logging_query_details.value.logging_query_type
        }
      }
      logging_query_type = data_source_details.value.logging_query_type
      operator           = data_source_details.value.operator
      query              = data_source_details.value.query
      dynamic "query_start_time" {
        for_each = data_source_details.value.query_start_time != null ? [data_source_details.value.query_start_time] : []
        content {
          query_start_time  = query_start_time.value.query_start_time
          start_policy_type = query_start_time.value.start_policy_type
        }
      }
      regions = data_source_details.value.regions
      dynamic "scheduled_query_scope_details" {
        for_each = data_source_details.value.scheduled_query_scope_details != null ? data_source_details.value.scheduled_query_scope_details : []
        content {
          region        = scheduled_query_scope_details.value.region
          resource_ids  = scheduled_query_scope_details.value.resource_ids
          resource_type = scheduled_query_scope_details.value.resource_type
        }
      }
      threshold = data_source_details.value.threshold
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

