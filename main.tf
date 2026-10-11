resource "grafana_apps_notifications_routingtree_v1beta1" "apps_notifications_routingtree_v1beta1s" {
  for_each = var.apps_notifications_routingtree_v1beta1s


  dynamic "metadata" {
    for_each = each.value.metadata != null ? each.value.metadata : []
    content {
      folder_uid = metadata.value.folder_uid
      uid        = metadata.value.uid
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      manager_identity = options.value.manager_identity
      overwrite        = options.value.overwrite
    }
  }

  dynamic "spec" {
    for_each = each.value.spec != null ? each.value.spec : []
    content {
      dynamic "defaults" {
        for_each = spec.value.defaults != null ? spec.value.defaults : []
        content {
          group_by        = defaults.value.group_by
          group_interval  = defaults.value.group_interval
          group_wait      = defaults.value.group_wait
          receiver        = defaults.value.receiver
          repeat_interval = defaults.value.repeat_interval
        }
      }
      disable_provenance = spec.value.disable_provenance
      dynamic "routes" {
        for_each = spec.value.routes != null ? spec.value.routes : []
        content {
          active_time_intervals = routes.value.active_time_intervals
          continue              = routes.value.continue
          group_by              = routes.value.group_by
          group_interval        = routes.value.group_interval
          group_wait            = routes.value.group_wait
          dynamic "matchers" {
            for_each = routes.value.matchers != null ? routes.value.matchers : []
            content {
              label = matchers.value.label
              type  = matchers.value.type
              value = matchers.value.value
            }
          }
          mute_time_intervals = routes.value.mute_time_intervals
          receiver            = routes.value.receiver
          repeat_interval     = routes.value.repeat_interval
          dynamic "routes" {
            for_each = routes.value.routes != null ? routes.value.routes : []
            content {
              active_time_intervals = routes.value.active_time_intervals
              continue              = routes.value.continue
              group_by              = routes.value.group_by
              group_interval        = routes.value.group_interval
              group_wait            = routes.value.group_wait
              dynamic "matchers" {
                for_each = routes.value.matchers != null ? routes.value.matchers : []
                content {
                  label = matchers.value.label
                  type  = matchers.value.type
                  value = matchers.value.value
                }
              }
              mute_time_intervals = routes.value.mute_time_intervals
              receiver            = routes.value.receiver
              repeat_interval     = routes.value.repeat_interval
              dynamic "routes" {
                for_each = routes.value.routes != null ? routes.value.routes : []
                content {
                  active_time_intervals = routes.value.active_time_intervals
                  continue              = routes.value.continue
                  group_by              = routes.value.group_by
                  group_interval        = routes.value.group_interval
                  group_wait            = routes.value.group_wait
                  dynamic "matchers" {
                    for_each = routes.value.matchers != null ? routes.value.matchers : []
                    content {
                      label = matchers.value.label
                      type  = matchers.value.type
                      value = matchers.value.value
                    }
                  }
                  mute_time_intervals = routes.value.mute_time_intervals
                  receiver            = routes.value.receiver
                  repeat_interval     = routes.value.repeat_interval
                  dynamic "routes" {
                    for_each = routes.value.routes != null ? routes.value.routes : []
                    content {
                      active_time_intervals = routes.value.active_time_intervals
                      continue              = routes.value.continue
                      group_by              = routes.value.group_by
                      group_interval        = routes.value.group_interval
                      group_wait            = routes.value.group_wait
                      dynamic "matchers" {
                        for_each = routes.value.matchers != null ? routes.value.matchers : []
                        content {
                          label = matchers.value.label
                          type  = matchers.value.type
                          value = matchers.value.value
                        }
                      }
                      mute_time_intervals = routes.value.mute_time_intervals
                      receiver            = routes.value.receiver
                      repeat_interval     = routes.value.repeat_interval
                      dynamic "routes" {
                        for_each = routes.value.routes != null ? routes.value.routes : []
                        content {
                          active_time_intervals = routes.value.active_time_intervals
                          continue              = routes.value.continue
                          group_by              = routes.value.group_by
                          group_interval        = routes.value.group_interval
                          group_wait            = routes.value.group_wait
                          dynamic "matchers" {
                            for_each = routes.value.matchers != null ? routes.value.matchers : []
                            content {
                              label = matchers.value.label
                              type  = matchers.value.type
                              value = matchers.value.value
                            }
                          }
                          mute_time_intervals = routes.value.mute_time_intervals
                          receiver            = routes.value.receiver
                          repeat_interval     = routes.value.repeat_interval
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

