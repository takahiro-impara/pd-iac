locals {
  users = {
    "imparapoc03@gmail.com" = {
      name = "poc user",
      role = "limited_user",
      team = ["poc", ],
    },
  }

  teams = [
    "poc",
  ]
}
