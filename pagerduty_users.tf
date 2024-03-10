data "pagerduty_users" "pd_users" {
  for_each = local.services
  team_ids = [pagerduty_team.pd_team[each.value.associated_team].id]

  depends_on = [module.pd_team_association]
}
