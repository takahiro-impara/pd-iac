resource "pagerduty_team_membership" "team_membership" {
  for_each = var.team_map
  team_id  = each.value
  user_id  = var.user_id
  role     = "manager"

  lifecycle {
    ignore_changes = [
      role
    ]
  }
}
