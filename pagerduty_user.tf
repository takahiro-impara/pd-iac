resource "pagerduty_user" "pd_user" {
  for_each = local.users
  name     = title(each.value.name)
  email    = each.key
  role     = each.value.role
}
