locals {
  users = {
    "imparapoc03@gmail.com" = {
      name  = "poc user",
      role  = "admin",
      teams = ["poc-pd", "poc-k8s"],
    },
  }

  teams = [
    "poc-pd",
    "poc-k8s",
  ]

  services = {
    "poc-pd-svc" = {
      associated_team = "poc-pd",
    },
    "poc-pk8s-svc" = {
      associated_team = "poc-k8s",
    }
  }
}
