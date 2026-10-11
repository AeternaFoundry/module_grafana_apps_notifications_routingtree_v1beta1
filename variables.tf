variable "apps_notifications_routingtree_v1beta1s" {
  description = <<EOT
Map of apps_notifications_routingtree_v1beta1s, attributes below
Optional:
    - metadata (block):
        - folder_uid (optional)
        - uid (required)
    - options (block):
        - manager_identity (optional)
        - overwrite (optional)
    - spec (block):
        - defaults (optional, block):
            - group_by (optional)
            - group_interval (optional)
            - group_wait (optional)
            - receiver (required)
            - repeat_interval (optional)
        - disable_provenance (optional)
        - routes (optional, block):
            - active_time_intervals (optional)
            - continue (optional)
            - group_by (optional)
            - group_interval (optional)
            - group_wait (optional)
            - matchers (optional, block):
                - label (optional)
                - type (optional)
                - value (optional)
            - mute_time_intervals (optional)
            - receiver (optional)
            - repeat_interval (optional)
            - routes (optional, block):
                - active_time_intervals (optional)
                - continue (optional)
                - group_by (optional)
                - group_interval (optional)
                - group_wait (optional)
                - matchers (optional, block):
                    - label (optional)
                    - type (optional)
                    - value (optional)
                - mute_time_intervals (optional)
                - receiver (optional)
                - repeat_interval (optional)
                - routes (optional, block):
                    - active_time_intervals (optional)
                    - continue (optional)
                    - group_by (optional)
                    - group_interval (optional)
                    - group_wait (optional)
                    - matchers (optional, block):
                        - label (optional)
                        - type (optional)
                        - value (optional)
                    - mute_time_intervals (optional)
                    - receiver (optional)
                    - repeat_interval (optional)
                    - routes (optional, block):
                        - active_time_intervals (optional)
                        - continue (optional)
                        - group_by (optional)
                        - group_interval (optional)
                        - group_wait (optional)
                        - matchers (optional, block):
                            - label (optional)
                            - type (optional)
                            - value (optional)
                        - mute_time_intervals (optional)
                        - receiver (optional)
                        - repeat_interval (optional)
                        - routes (optional, block):
                            - active_time_intervals (optional)
                            - continue (optional)
                            - group_by (optional)
                            - group_interval (optional)
                            - group_wait (optional)
                            - matchers (optional, block):
                                - label (optional)
                                - type (optional)
                                - value (optional)
                            - mute_time_intervals (optional)
                            - receiver (optional)
                            - repeat_interval (optional)
EOT

  type = map(object({
    metadata = optional(list(object({
      folder_uid = optional(string)
      uid        = string
    })))
    options = optional(list(object({
      manager_identity = optional(string)
      overwrite        = optional(bool)
    })))
    spec = optional(list(object({
      defaults = optional(list(object({
        group_by        = optional(list(string))
        group_interval  = optional(string)
        group_wait      = optional(string)
        receiver        = string
        repeat_interval = optional(string)
      })))
      disable_provenance = optional(bool)
      routes = optional(list(object({
        active_time_intervals = optional(list(string))
        continue              = optional(bool)
        group_by              = optional(list(string))
        group_interval        = optional(string)
        group_wait            = optional(string)
        matchers = optional(list(object({
          label = optional(string)
          type  = optional(string)
          value = optional(string)
        })))
        mute_time_intervals = optional(list(string))
        receiver            = optional(string)
        repeat_interval     = optional(string)
        routes = optional(list(object({
          active_time_intervals = optional(list(string))
          continue              = optional(bool)
          group_by              = optional(list(string))
          group_interval        = optional(string)
          group_wait            = optional(string)
          matchers = optional(list(object({
            label = optional(string)
            type  = optional(string)
            value = optional(string)
          })))
          mute_time_intervals = optional(list(string))
          receiver            = optional(string)
          repeat_interval     = optional(string)
          routes = optional(list(object({
            active_time_intervals = optional(list(string))
            continue              = optional(bool)
            group_by              = optional(list(string))
            group_interval        = optional(string)
            group_wait            = optional(string)
            matchers = optional(list(object({
              label = optional(string)
              type  = optional(string)
              value = optional(string)
            })))
            mute_time_intervals = optional(list(string))
            receiver            = optional(string)
            repeat_interval     = optional(string)
            routes = optional(list(object({
              active_time_intervals = optional(list(string))
              continue              = optional(bool)
              group_by              = optional(list(string))
              group_interval        = optional(string)
              group_wait            = optional(string)
              matchers = optional(list(object({
                label = optional(string)
                type  = optional(string)
                value = optional(string)
              })))
              mute_time_intervals = optional(list(string))
              receiver            = optional(string)
              repeat_interval     = optional(string)
              routes = optional(list(object({
                active_time_intervals = optional(list(string))
                continue              = optional(bool)
                group_by              = optional(list(string))
                group_interval        = optional(string)
                group_wait            = optional(string)
                matchers = optional(list(object({
                  label = optional(string)
                  type  = optional(string)
                  value = optional(string)
                })))
                mute_time_intervals = optional(list(string))
                receiver            = optional(string)
                repeat_interval     = optional(string)
              })))
            })))
          })))
        })))
      })))
    })))
  }))
}

