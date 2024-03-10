resource "pagerduty_service_integration" "datadog" {
  for_each = local.services
  name     = "datadog-integration-${each.key}"
  service  = pagerduty_service.pd_service[each.key].id
  vendor   = data.pagerduty_vendor.vendor.id
}
