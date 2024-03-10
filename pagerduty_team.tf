resource "pagerduty_team" "pd_team" {
  for_each = toset(local.teams)
  name     = each.key
}

module "pd_team_association" {
  source   = "./module/team_association"
  for_each = local.users
  teams    = local.teams
  user_id  = pagerduty_user.pd_user[each.key].id

  depends_on = [pagerduty_team.pd_team]
}