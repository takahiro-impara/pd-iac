locals {
  users = {
    "imparapoc03@gmail.com" = {
      name  = "poc user",
      role  = "admin",
      teams = ["poc", ],
    },
  }

  teams = [
    "poc",
  ]

  services = {
    "poc-system" = {
      associated_team = "poc",
    }
  }
}
