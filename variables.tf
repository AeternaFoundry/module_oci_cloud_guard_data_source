variable "cloud_guard_data_sources" {
  description = <<EOT
Map of cloud_guard_data_sources, attributes below
Required:
    - compartment_id
    - data_source_feed_provider
    - display_name
Optional:
    - defined_tags
    - freeform_tags
    - status
    - data_source_details (block):
        - additional_entities_count (optional)
        - data_source_feed_provider (required)
        - description (optional)
        - interval_in_minutes (optional)
        - interval_in_seconds (optional)
        - logging_query_details (optional, block):
            - key_entities_count (optional)
            - logging_query_type (required)
        - logging_query_type (optional)
        - operator (optional)
        - query (optional)
        - query_start_time (optional, block):
            - query_start_time (optional)
            - start_policy_type (required)
        - regions (optional)
        - scheduled_query_scope_details (optional, block):
            - region (optional)
            - resource_ids (optional)
            - resource_type (optional)
        - threshold (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id            = string
    data_source_feed_provider = string
    display_name              = string
    defined_tags              = optional(map(string))
    freeform_tags             = optional(map(string))
    status                    = optional(string)
    data_source_details = optional(object({
      additional_entities_count = optional(number)
      data_source_feed_provider = string
      description               = optional(string)
      interval_in_minutes       = optional(number)
      interval_in_seconds       = optional(number)
      logging_query_details = optional(object({
        key_entities_count = optional(number)
        logging_query_type = string
      }))
      logging_query_type = optional(string)
      operator           = optional(string)
      query              = optional(string)
      query_start_time = optional(object({
        query_start_time  = optional(string)
        start_policy_type = string
      }))
      regions = optional(list(string))
      scheduled_query_scope_details = optional(list(object({
        region        = optional(string)
        resource_ids  = optional(list(string))
        resource_type = optional(string)
      })))
      threshold = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_guard_data_sources : (
        v.data_source_details == null || (contains([for v in ["LOGGINGQUERY", "SCHEDULEDQUERY"] : lower(v)], lower(v.data_source_details.data_source_feed_provider)))
      )
    ])
    error_message = "must be one of: \"LOGGINGQUERY\", \"SCHEDULEDQUERY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.cloud_guard_data_sources : (
        v.data_source_details == null || (v.data_source_details.logging_query_details == null || (contains([for v in ["INSIGHT"] : lower(v)], lower(v.data_source_details.logging_query_details.logging_query_type))))
      )
    ])
    error_message = "must be one of: \"INSIGHT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.cloud_guard_data_sources : (
        v.data_source_details == null || (v.data_source_details.query_start_time == null || (contains([for v in ["ABSOLUTE_TIME_START_POLICY", "NO_DELAY_START_POLICY"] : lower(v)], lower(v.data_source_details.query_start_time.start_policy_type))))
      )
    ])
    error_message = "must be one of: \"ABSOLUTE_TIME_START_POLICY\", \"NO_DELAY_START_POLICY\""
  }
}

