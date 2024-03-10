resource "pagerduty_team_membership" "team_membership" {
  for_each = toset(var.teams)
  team_id  = data.pagerduty_team.team[each.key].id
  user_id  = var.user_id
  role     = "manager"

  lifecycle {
    ignore_changes = [
      role
    ]
  }
}

data "pagerduty_team" "team" {
  for_each = toset(var.teams)
  name     = each.key
}
