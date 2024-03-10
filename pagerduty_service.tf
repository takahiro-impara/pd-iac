resource "pagerduty_service" "pd_service" {
  for_each                = local.services
  name                    = title(each.key)
  auto_resolve_timeout    = 86400
  acknowledgement_timeout = 1200
  escalation_policy       = ""
  alert_creation          = "create_alerts_and_incidents"

  auto_pause_notifications_parameters {
    enabled = true
    timeout = 300
  }

  alert_grouping_parameters {
    type = "intelligent"
  }
}