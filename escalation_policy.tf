resource "pagerduty_escalation_policy" "pd_esp" {
  for_each  = local.services
  name      = "escalation-policy-${each.key}"
  num_loops = 3
  teams     = [pagerduty_team.pd_team[each.value.associated_team].id]

  rule {
    escalation_delay_in_minutes = 10
    target {
      type = "user_reference"
      id   = data.pagerduty_users.pd_users[each.key].users[0].id
    }
  }

  lifecycle {
    ignore_changes = [
      rule
    ]
  }
}
